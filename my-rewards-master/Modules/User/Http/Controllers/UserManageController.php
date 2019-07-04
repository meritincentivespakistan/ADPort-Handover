<?php

namespace Modules\User\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Account\Models\Account;
use Modules\Program\Http\Repositories\ProgramRepository;
use Modules\User\Exports\UserExport;
use Modules\User\Imports\UserImport;
use Modules\User\Models\ProgramUsers;
use Spatie\Permission\Models\Role;

class UserManageController extends Controller
{
    private $program_repository;

    public function __construct(ProgramRepository $program_repository)
    {
        $this->program_repository = $program_repository;
    }


    /**
     * @param $program_id
     * @return JsonResponse
     * @throws \Exception
     */
    public function download($program_id)
    {
        $program = $this->program_repository->find($program_id);

        $columns = [];

        $list = unserialize($program->registrationForm->form);


        foreach ($list as $key => $value) {
            if($list[$key]['is_hidden'] != 0)
                array_push($columns, $key);
        }


        $program_name = str_replace(' ', '', $program->name);

        $file_name = $program_name.'_UserImportCsvTemplate.csv';

        $new_csv = fopen(public_path($file_name) , 'w');

        fputcsv($new_csv, $columns);

        fclose($new_csv);

        return response()->json([
            'file_path' => url($file_name)
        ]);
    }


    /***
     * @param Request $request
     *
     * @return JsonResponse
     * @throws \Exception
     */
    public function import(Request $request)
    {
        //todo move uploaded file to a folder
        $file = $request->file('users');

        $request->validate([
            'program_id' => 'required|exists:programs,id',
            'users' => 'required|file',
        ]);

        $uploaded = $file->move(public_path('uploaded/'.$request->program_id.'/users/csv/'), $file->getClientOriginalName());

        $users = Excel::toCollection(new UserImport(), $uploaded->getRealPath());

        $users = array_slice($users[0]->toArray(), 1);

//        chmod($uploaded->getRealPath(),0777);

        $rules = [
            '*.3' => "required|email|unique:program_users,email|unique:accounts,email",
            '*.4' => "required|unique:program_users,username|unique:accounts,email",
            '*.15' => "in:email,sms",
//            '*.17' => "sometimes|exists:roles,id",
        ];

        $validator = \Validator::make($users, $rules);

        if ($validator->fails())
            return response()->json(['message' => 'The given data was invalid.', 'errors' => $validator->errors()], 422);


        foreach ($users as $user){

            $account = Account::updateOrCreate([
                'email' => $user[3],
                'name' => $user[4],
                'password' => $user[2] ?? 'password',
                'contact_number' => '',
                'type' => 'user'
            ]);

            if ($user[17] !== NULL){
                $role = Role::updateOrCreate([
                    'name' => $user[17],
                    'program_id' => $request->program_id,
                    'guard_name' => 'api'
                ]);
                $account->assignRole($role);
            }


            $time = strtotime( $user[14] );

            $newformat = date('Y-m-d',$time);

            ProgramUsers::updateOrCreate([
                'first_name' => $user[0] ?? '',
                'last_name' => $user[1] ?? '',
                'email' => $user[3],
                'username' => $user[4],
                'title' => $user[5] ?? '',
                'company'     => $user[6] ?? '',
                'job_title'     => $user[7] ?? '',
                'address_1'     => $user[8] ?? '',
                'address_2'     => $user[9] ?? '',
                'postcode'     => $user[10] ?? '',
                'country'     => $user[11] ?? '',
                'telephone'     => $user[12] ?? '',
                'mobile'     => $user[13] ?? '',
                'date_of_birth'     => $newformat   ,
                'communication_preference' => $user[15] ?? 'email',
                'language'     => 'en',
                'town'     =>  '',
                'account_id' => $account->id,
                'program_id' => $request->program_id,
            ]);
        }

        return response()->json([
            'uploaded_file' => url('uploaded/'.$request->program_id.'/users/csv/'.$uploaded->getFilename()),
            'message' => 'Data Imported Successfully'
        ]);

    }


    /**
     * @param $program_id
     * @return JsonResponse
     */
    public function export($program_id)
    {
        Excel::store(new UserExport(), public_path('uploaded/'.$program_id.'/users/csv/exported/'.(Carbon::now())->toDateString().'-AllUserData.csv'));
        return response()->json([
            'file_path' => url( 'uploaded/'.$program_id.'/users/csv/exported/'.(Carbon::now())->toDateString().'-AllUserData.csv' )
        ]);
    }


    public function validateCsvContent(Request $request)
    {
        $path = $request->file('csv_file')->getRealPath();
        if ($request->has('header')) {
            $data = Excel::load($path, function($reader) {})->get()->toArray();
        } else {
            $data = array_map('str_getcsv', file($path));
        }
        if (count($data) > 0) {
            if ($request->has('header')) {
                $csv_header_fields = [];
                foreach ($data[0] as $key => $value) {
                    $csv_header_fields[] = $key;
                }
            }
            $csv_data = array_slice($data, 0, 2);
            $csv_data_file = CsvData::create([
                'csv_filename' => $request->file('csv_file')->getClientOriginalName(),
                'csv_header' => $request->has('header'),
                'csv_data' => json_encode($data)
            ]);
        } else {
            return redirect()->back();
        }
    }

}
