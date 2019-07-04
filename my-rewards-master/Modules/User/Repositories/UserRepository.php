<?php namespace Modules\User\Http\Repositories;

use App\Repositories\Repository;
use Modules\Account\Models\Account;
use Modules\User\Models\ProgramUsers;
use Spatie\Permission\Models\Role;

class UserRepository extends Repository
{
    protected $modeler = ProgramUsers::class;

    /**
     * @param $data
     *
     * @return mixed
     */
    public function search($data)
    {
        return $this->modeler->where('program_id', $data['program_id'])
            ->where('first_name', 'like', '%' . $data['keyword'] . '%')
            ->orWhere('last_name', 'like', '%' . $data['keyword'] . '%')->get();
    }

    /**
     * @param ProgramUsers $user
     * @param $data
     * @param $program
     *
     * @return bool
     */
    public function createUserAccount(ProgramUsers $user, $data, $program)
    {
        $account = Account::create([
           'name' => $data['username'],
           'email' => $data['email'],
           'password' => bcrypt($data['password']),
           'contact_number' => $data['contact_number'],
           'type' => 'user'
        ]);

        if ($data['role_id']){
            $account->assignRole(Role::findById($data['role_id']));
        }

        return \DB::table('program_users_account')->insert([
           'program_users_id' => $user->id,
           'account_id' => $account->id
        ]);
    }
}
