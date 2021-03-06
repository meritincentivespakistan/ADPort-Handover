<?php namespace Modules\Nomination\Http\Services;

use Illuminate\Support\Collection;
use Modules\Account\Http\Services\PermissionService;
use Modules\Account\Http\Services\RoleService;
use Modules\Account\Models\Account;
use Modules\Nomination\Models\Nomination;
use Modules\Nomination\Models\UserNomination;
use Modules\Nomination\Repositories\NominationRepository;
use Modules\Account\Repositories\TokensRepository;
use Modules\Account\Http\Repositories\AccountRepository;
use Illuminate\Support\Facades\Mail;
use Modules\Nomination\Repositories\SetApprovalRepository;
use Modules\User\Http\Services\UserService;
use Modules\User\Models\ProgramUsers;

class NominationService
{
    private $repository;
    private $role_service;
    private $user_service;
    private $tokens_repository;
    private $account_repository;
    private $permission_service;

    public function __construct(TokensRepository $tokens_repository,NominationRepository $repository,AccountRepository $account_repository, RoleService $roleService, PermissionService $permissionService, UserService $userService)
    {
        $this->tokens_repository = $tokens_repository;
        $this->account_repository = $account_repository;
        $this->repository = $repository;
        $this->permission_service = $permissionService;
        $this->role_service = $roleService;
        $this->user_service = $userService;
    }


    /**
     * @param $pagination_count
     * @param array $data
     *
     * @return mixedModules\Nomination\Repositories\Nominat
     */
    public function get($pagination_count, $data = [])
    {
        return $data ? $this->repository->filter($data, $pagination_count) : $this->repository->paginate($pagination_count);
    }

    /**
     * @param $data
     *
     * @return mixed
     */
    public function store($data)
    {
        return $this->repository->create($data);
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
     * @param $data
     * @param $id
     */
    public function update($data, $id): void
    {
        $this->repository->update($data, $id);
    }


    /**
     * @param $id
     */
    public function destroy($id): void
    {
        $this->repository->destroy($id);
    }


    /**
     * @param Nomination $nomination
     * @return mixed
     */
    public function getFirstLevelApprovalUsers(Nomination $nomination)
    {
        $approvals = $nomination->set_approval; //todo the relation should be one to one

        $users = collect();

        foreach ($approvals as $approval){
            //todo relation is working but i preferred to get it manually
            if($approval->level_1_approval_type === 'permission')
                $users->push($this->permission_service->getPermissionUsers($approval->level_1_permission));

            $users = $this->role_service->getRoleUsers($approval->level_1_group);

            if (is_array(unserialize($approval->level_1_user))){
               foreach (unserialize($approval->level_1_user) as $value){
                   $users->push($this->user_service->find($value));
               }
            }

        }

        return $users;

    }

    /**
     * @param Nomination $nomination
     * @return mixed
     */
    public function getSecondLevelApprovalUsers(Nomination $nomination)
    {
        $approvals = $nomination->set_approval;

        $users = collect();

        foreach ($approvals as $approval){
            //todo relation is working but i preferred to get it manually
            if($approval->level_2_approval_type === 'permission')
                $users->push($this->permission_service->getPermissionUsers($approval->level_2_permission));

            $users = $this->role_service->getRoleUsers($approval->level_2_group);

            if (is_array(unserialize($approval->level_2_user))){
                foreach (unserialize($approval->level_2_user) as $value){
                    $users->push($this->user_service->find($value));
                }
            }

        }

        return $users;
    }

    /**
     * @param UserNomination $userNomination
     * @return Collection
     */
    public function getApprovalAdmin(UserNomination $userNomination)
    {
        $user_group_name = $userNomination->account->getRoleNames()[0];

        $users  = collect();

        $users->push(ProgramUsers::where('first_name', $user_group_name)->first());

        return $users;
    }

    /**
     * @param Nomination $nomination
     * @return mixed
     */
    public function getFirstLevelWallUsers(Nomination $nomination)
    {
        //dd($nomination->user_nomination());
        return $nomination->user_nomination()->where('level_1_approval', 1)->orderByDesc('id')->get();
    }

    /**
     * @param Nomination $nomination
     * @return mixed
     */
    public function getSecondLevelWallUsers(Nomination $nomination)
    {
        return $nomination->user_nomination()->where('level_2_approval', 1)->orderByDesc('id')->get();
    }


    /**
     *
     * @return string|null
     * @throws \Exception
     */
    public function generateVerificationToken(): ?string
    {
        $token = str_random(50);

        if ($this->tokens_repository->getCount('token', $token) === 0) {
            return $token;
        }

        return $this->generateVerificationToken();
    }

    /**
     * @param $account
     *
     * @throws \Exception
     */
    public function sendmail($email,$subject,$message): void
    {
        $token = $this->generateVerificationToken();
        Mail::send(new \Modules\Nomination\Mails\SendMail($email,$token,$message,$subject));

    }

}
