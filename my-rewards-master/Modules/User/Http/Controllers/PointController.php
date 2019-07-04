<?php namespace Modules\User\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\User\Http\Requests\PointRequest;
use Modules\User\Http\Services\PointService;
use Modules\Program\Http\Services\ProgramService;
use Modules\User\Transformers\CurrentBalanceTransformer;
use Modules\User\Http\Services\UserService;
use Spatie\Fractal\Fractal;
use Modules\User\Transformers\PointsTransformer;

class PointController extends Controller
{
    private $service, $user_service;

    /**
     * PointController constructor.
     *
     * @param UserService $user_service
     * @param PointService $service
     */
    public function __construct(UserService $user_service, PointService $service)
    {
        $this->service      = $service;
        $this->user_service = $user_service;
    }


    /**
     * @param Request $request
     * @param $program_id
     * @param $user_id
     *
     * @return Fractal
     */
    public function index(Request $request, $program_id, $user_id): Fractal
    {
        $user   = $this->user_service->find($user_id);
        $points = $this->service->get(30, $user, $request->query());

        return fractal($points, new PointsTransformer());
    }

    /**
     * @param $program_id
     * @param $user_id
     * @param PointRequest $request
     * @param ProgramService $program_service
     *
     * @return Fractal
     */
    public function store($program_id, $user_id, PointRequest $request, ProgramService $program_service): Fractal
    {
        $user    = $this->user_service->find($user_id);
        $program = $program_service->find($program_id);
        $point   = $this->service->store($user, $program, $request->all());

        return fractal($point, new PointsTransformer());
    }

    /**
     * @param $user_id
     * @param PointRequest $request
     *
     * @return Fractal
     */
    public function addPointsToSpecificUser($user_id , PointRequest $request): Fractal
    {
        $user    = $this->user_service->find($user_id);
        $point   = $this->service->addPointsToSpecificUser($user, $request->all());

        return fractal($point, new PointsTransformer());
    }

    /**
     * @param $program_id
     * @param $user_id
     *
     * @return Fractal
     */
    public function currentBalance($program_id, $user_id): Fractal
    {
        $user            = $this->user_service->find($user_id);
        $current_balance = $this->service->currentBalance($user);

        return fractal($current_balance, new CurrentBalanceTransformer());
    }

}
