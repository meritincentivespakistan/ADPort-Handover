<?php

namespace Modules\Account\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Account\Http\Services\RoleService;
use Modules\Account\Models\Account;
use Modules\Account\Transformers\PermissionTransformer;
use Modules\User\Transformers\UserTransformer;
use \Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Spatie\Permission\Models\Role;
use Illuminate\Routing\Controller;
use Modules\Account\Http\Requests\RoleRequest;
use Modules\Account\Transformers\RoleTransformer;
use Modules\Account\Http\Repositories\RoleRepository;

class RoleController extends Controller
{
    private $service;
    private $repository;

    public function __construct(RoleRepository $repository, RoleService $service)
    {
        $this->repository = $repository;
        $this->service = $service;
    }

    /**
     * @param $id
     * @return Fractal
     */
    public function index($id): Fractal
    {

        $agencies = $this->repository->getRolesByProgram($id);

        return fractal($agencies, new RoleTransformer());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param RoleRequest $request
     *
     * @return mixed
     */
    public function store(RoleRequest $request)
    {
        $role = $this->repository->create($request->all());

        return fractal($role, new RoleTransformer());
    }

    /**
     * @param Role $role
     *
     * @return Fractal
     */
    public function show(Role $role): Fractal
    {
        return fractal($role, new RoleTransformer());
    }

    /**
     * @param RoleRequest $request
     * @param Role $role
     *
     * @return JsonResponse
     */
    public function update(RoleRequest $request, Role $role): JsonResponse
    {
        $role->update($request->all());

        return response()->json([ 'message' => 'Data has been successfully updated ' ]);
    }

    /**
     * @param Role $role
     *
     * @return JsonResponse
     * @throws \Exception
     */
    public function destroy(Role $role): JsonResponse
    {
        $role->delete();

        return response()->json([ 'message' => 'Data has been successfully deleted' ]);
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getRoleAccounts($id)
    {
        $users = $this->service->getRoleUsers($id);

        return fractal($users , new UserTransformer());

    }

    /**
     * @param Request $request
     * @return Fractal
     */
    public function assignPermissionsToGroup(Request $request)
    {

        $request->validate([
            'permission_names.*'    => 'required|string|exists:permissions,name'
        ]);

        $role = $this->service->assignPermissionsToGroup($request->role_id, $request->permission_names);

        return fractal($role , new RoleTransformer());

    }


    public function getRolePermissions($id)
    {
        $permissions = $this->service->getRolePermissions($id);

        return fractal($permissions , new PermissionTransformer());

    }

}
