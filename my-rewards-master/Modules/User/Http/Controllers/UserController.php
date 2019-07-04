<?php namespace Modules\User\Http\Controllers;

use Illuminate\Http\Request;
use Modules\User\Http\Services\UserService;
use \Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Program\Models\Program;
use Modules\User\Http\Requests\ProgramUsersRequest;
use Modules\User\Transformers\UserTransformer;

class UserController extends Controller
{
    private $service;

    public function __construct(UserService $service)
    {
        $this->service = $service;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $users = $this->service->get();

        return fractal($users, new UserTransformer());
    }

    /**
     * @param Program $program
     * @param ProgramUsersRequest $request
     *
     * @return Fractal
     * @throws \Throwable
     */
    public function store(Program $program, ProgramUsersRequest $request): Fractal
    {
        $user = $this->service->store($program, $request);

        return fractal($user, new UserTransformer());
    }

    /**
     * @param $id
     *
     * @return Fractal
     */
    public function show($id): Fractal
    {
        $user = $this->service->find($id);

        return fractal($user, new UserTransformer());
    }

    /**
     * @param ProgramUsersRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ProgramUsersRequest $request, $id): JsonResponse
    {
        $this->service->update($request, $id);

        return response()->json([ 'message' => 'Data has been successfully updated' ]);
    }

    /**
     * @param $id
     *
     * @return JsonResponse
     */
    public function destroy($id): JsonResponse
    {
        $this->service->destroy($id);

        return response()->json([ 'message' => 'Data has been successfully deleted' ]);
    }

    /**
     * @param Request $request
     *
     * @return Fractal
     */
    public function search(Request $request): Fractal
    {
        $users = $this->service->search($request);

        return fractal($users, new UserTransformer());
    }

    /**
     * @param Request $request
     *
     * @return mixed
     */
    public function assignUserToGroup(Request $request)
    {
        return $this->service->assignUserToGroup($request);
    }

}
