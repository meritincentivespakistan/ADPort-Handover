<?php

namespace Modules\Account\Http\Controllers;

use Modules\Account\Http\Services\PermissionService;
use Modules\Account\Models\Account;
use Modules\Account\Models\Permission;
use Modules\User\Models\ProgramUsers;
use Modules\User\Transformers\UserTransformer;
use Spatie\Fractal\Fractal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Account\Transformers\PermissionTransformer;
use Modules\Account\Http\Repositories\PermissionRepository;

class PermissionController extends Controller
{
    private $repository;
    private $service;

    public function __construct(PermissionRepository $repository, PermissionService $service)
    {
        $this->repository = $repository;
        $this->service = $service;
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $permissions = $this->repository->get();

        return $permissions->map(function ($permission) {
            return (new PermissionTransformer())->transform($permission);
        })->groupBy(['table_name']);
    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request)
    {
        return response()->json($request);
    }


    /**
     * @param Request $request
     *
     * @return Fractal
     */
    public function search(Request $request): Fractal
    {
        $users = $this->repository->search($request->all());

        return fractal($users, new PermissionTransformer());
    }

    /**
     * @param $id
     * @return mixed
     */
    public function getPermissionAccounts($id)
    {
        $users = $this->service->getPermissionUsers($id);

        return fractal($users , new UserTransformer());

    }
}
