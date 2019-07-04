<?php namespace Modules\User\Http\Services;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Modules\Account\Models\Account;
use Modules\Program\Models\Program;
use Modules\User\Http\Repositories\UserRepository;
use Modules\User\Http\Requests\ProgramUsersRequest;
use Modules\User\Models\ProgramUsers;
use Spatie\Fractal\Fractal;
use Spatie\Permission\Models\Role;

class UserService
{
    public $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @return Fractal
     */
    public function get(): Fractal
    {
        return $this->repository->get();
    }

    /**
     * @param Program $program
     * @param ProgramUsersRequest $request
     *
     * @return mixed
     */
    public function store(Program $program, ProgramUsersRequest $request)
    {
        $account = Account::create([
            'name'              => $request->username,
            'email'             => $request->email,
            'password'          => $request->password,
            'contact_number'    => $request->contact_number,
            'type'              => 'user',
            'email_verified_at' => Carbon::now()
        ]);

        if ($request->role_id) {
            $account->assignRole(Role::findById($request->role_id));
        }

        return ProgramUsers::create([
            'program_id'               => $program->id,
            'title'                    => $request->title,
            'first_name'               => $request->first_name,
            'last_name'                => $request->last_name,
            'email'                    => $request->email,
            'username'                 => $request->username,
            'company'                  => $request->company,
            'job_title'                => $request->job_title,
            'address_1'                => $request->address_1,
            'address_2'                => $request->address_2,
            'town'                     => $request->twon,
            'postcode'                 => $request->postcode,
            'country'                  => $request->country,
            'telephone'                => $request->telephone,
            'mobile'                   => $request->mobile,
            'date_of_birth'            => $request->date_of_birth,
            'communication_preference' => $request->communication_preference,
            'language'                 => $request->language,
            'account_id'               => $account->id
        ]);


    }

    /**
     * @param $id
     *
     * @return mixed
     */
    public function find($id)
    {
        return $this->repository->find($id);
    }

    /**
     * @param ProgramUsersRequest $request
     * @param $id
     */
    public function update(ProgramUsersRequest $request, $id): void
    {
        $this->repository->update($request->all(), $id);
    }

    /**
     * @param $id
     */
    public function destroy($id): void
    {
        $this->repository->destroy($id);
    }

    /**
     * @param Request $request
     *
     * @return mixed
     */
    public function search(Request $request)
    {
        return $this->repository->search($request->all());
    }

    /**
     * @param Request $request
     *
     * @return mixed
     */
    public function assignUserToGroup(Request $request)
    {
        $role = Role::findById($request->role_id);

        $user = ProgramUsers::find($request->user_id);

        if (empty($user))
            throw ValidationException::withMessages([ 'user' => 'This user is not active or does not exist' ]);

        $account = $user->account;

        return $account->assignRole($role);
    }


}
