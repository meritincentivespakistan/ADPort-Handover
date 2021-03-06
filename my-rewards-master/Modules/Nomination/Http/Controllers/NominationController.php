<?php

namespace Modules\Nomination\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Account\Models\Account;
use Modules\Account\Transformers\AccountTransformer;
use Modules\Nomination\Transformers\UserNominationTransformer;
use Modules\User\Transformers\UserTransformer;
use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Nomination\Http\Requests\NominationRequest;
use Modules\Nomination\Transformers\NominationTransformer;
use Modules\Nomination\Transformers\NominationValueTransformer;
use Modules\Nomination\Repositories\NominationRepository;
use Modules\Nomination\Http\Services\NominationService;
use Modules\Nomination\Models\Nomination;


class NominationController extends Controller
{
    private $repository;
    private $nomination_service;

    public function __construct(NominationRepository $repository,NominationService $nomination_service)
    {
        $this->repository = $repository;
        $this->nomination_service = $nomination_service;
    }
    /**
    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $order = $this->repository->get();
        return fractal($order, new NominationTransformer);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function NominationValuesIcons()
    {
        $icons_set=[
            "http://backend.hostersstack.com/img/fair.png",
            "http://backend.hostersstack.com/img/eager.png",
            "http://backend.hostersstack.com/img/respond.png",
            "http://backend.hostersstack.com/img/safe.png",
            "http://backend.hostersstack.com/img/innovation.png"];

        return response()->json($icons_set);
    }
 /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function NominationValuesIcons2()
    {
        $icons_set=[
            "http://backend.hostersstack.com/img/fair_.png",
            "http://backend.hostersstack.com/img/eager_.png",
            "http://backend.hostersstack.com/img/respond_.png",
            "http://backend.hostersstack.com/img/safe_.png",
            "http://backend.hostersstack.com/img/innovation_.png"];

        return response()->json($icons_set);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function NominationValues($nomination_id)
    {
        $record = Nomination::where('id', '=', $nomination_id)->first();

        if ($record === null) {
            return response()->json(['message' => 'The given data was invalid.'], 422);
        }else {
            $value_set = $this->repository->find($nomination_id)->value_set;
            $nomination = $this->repository->get_nomination($nomination_id, $value_set);
            return $nomination;
        }
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param NominationRequest $request
     * @return Fractal
     */
    public function store(NominationRequest $request)
    {
        $validator = \Validator::make($request->all(), [
            'value_set' => 'required|exists:value_sets,id',
            'name' => 'required|unique:nominations',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'The given data was invalid.'], 422);
        }else{
            $Category = $this->repository->create($request->all());
            return fractal($Category, new NominationTransformer);
        }
    }

    /**
     * Show the specified resource.
     *
     * @param $id
     *
     * @return Fractal
     */
    public function show($id): Fractal
    {
        $Category = $this->repository->find($id);

        return fractal($Category, new NominationTransformer);
    }

    /**
     *
     * Update the specified resource in storage.
     *
     * @param NominationRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(NominationRequest $request, $id): JsonResponse
    {
        $validator = \Validator::make($request->all(), [
            'value_set' => 'required|exists:value_sets,id',
            'name' => 'required|unique:nominations,name,'.$id,
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'The given data was invalid.'], 422);
        }else {
            $this->repository->update($request->all(), $id);
            return response()->json(['message' => 'Updated Successfully']);
        }
    }

    /**
     *
     *  Remove the specified resource from storage.
     *
     * @param $id
     *
     * @return JsonResponse
     */
    public function destroy($id): JsonResponse
    {
        $this->repository->destroy($id);

        return response()->json(['message' => 'Trashed Successfully']);
    }

    public function users($nomination_id)
    {
        $nomination = $this->nomination_service->find($nomination_id);

        if ($nomination->approval_level === 'approval_level_1')
            $users = $this->nomination_service->getFirstLevelApprovalUsers($nomination);
        else
            $users = $this->nomination_service->getSecondLevelApprovalUsers($nomination);


        return fractal($users , new UserTransformer());

    }

    public function NominationWall($nomination_id)
    {
        $nomination = $this->nomination_service->find($nomination_id);

        if ($nomination->approval_level === 'approval_level_1')
            $users = $this->nomination_service->getFirstLevelWallUsers($nomination);
        else
            $users = $this->nomination_service->getSecondLevelWallUsers($nomination);


        return fractal($users , new UserNominationTransformer());

    }

    /**
     * @return Fractal
     */
    public function NominationBadgesWall()
    {
        $accounts = Account::whereHas('badges')->get();

        return fractal($accounts , new AccountTransformer());

    }

}
