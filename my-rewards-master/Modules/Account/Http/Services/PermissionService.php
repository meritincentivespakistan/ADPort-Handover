<?php namespace Modules\Account\Http\Services;

use Modules\Account\Models\Account;
use Modules\Account\Http\Repositories\PermissionRepository;

/**
 * Class PasswordsService
 *
 * @package Modules\Account\Http\Service
 */
class PermissionService
{
    protected $repository;

    /**
     * PasswordsService constructor.
     *
     * @param PermissionRepository $repository
     */
    public function __construct(PermissionRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getPermissionUsers($id)
    {
        $permission = $this->repository->find($id);

        $accounts = Account::whereHas('permissions', function ($query) use ($permission) {
            $query->where('name', $permission->name);
        })->get();

        return $accounts->map(function ($account){
            return $account->user;
        })->filter();
    }


}
