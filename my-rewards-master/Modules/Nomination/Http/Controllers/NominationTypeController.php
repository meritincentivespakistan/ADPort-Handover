<?php

namespace Modules\Nomination\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Nomination\Models\NominationType;
use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Nomination\Http\Requests\NominationTypeRequest;
use Modules\Nomination\Transformers\BadgesTransformer;
use Modules\Nomination\Transformers\UserBadgesTransformer;
use Modules\Nomination\Transformers\NominationTypeTransformer;
use Modules\Nomination\Repositories\NominationTypeRepository;


class NominationTypeController extends Controller
{
    private $repository;

    public function __construct(NominationTypeRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @return Fractal
     */
    public function index(): Fractal
    {
        $nomination_type = $this->repository->get();
        return fractal($nomination_type, new NominationTypeTransformer);
    }

    /**
     * @param $value_set_id
     * @return Fractal
     */
    public function getNominationTypeBy($value_set_id): Fractal
    {
        $NTypes = $this->repository->getNominationTypeBy($value_set_id);
        return fractal($NTypes, new NominationTypeTransformer);
    }

   /**
     * @param $value_set_id
     * @return Fractal
     */
    public function NominationBadges($account_id): Fractal
    {
        $Badges = NominationType::select('nomination_types.id','nomination_types.name','nomination_types.active_url','nomination_types.not_active_url','account_id')
        ->leftJoin('account_badges', function($join) use ($account_id){
          $join->on('nomination_types.id', '=', 'account_badges.nomination_type_id')->where('account_badges.account_id',$account_id);
        })
        ->where('value_set',1)
        ->distinct('nomination_types.id')
        ->get();
        return fractal($Badges, new UserBadgesTransformer);
    }



    /**
     * @param $account_id
     * @return Fractal
     */
    public function myorders($account_id): Fractal
    {
        $nomination_type = $this->repository->UserOrders($account_id);
        return fractal($nomination_type, new NominationTypeTransformer);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param NominationTypeRequest $request
     * @return Fractal
     */
    public function store(NominationTypeRequest $request)
    {
        $nomination_types = $this->repository->create($request->all());
        return fractal($nomination_types, new NominationTypeTransformer);
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

        return fractal($Category, new NominationTypeTransformer);
    }

    /**
     *
     * Update the specified resource in storage.
     *
     * @param NominationTypeRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(NominationTypeRequest $request, $id): JsonResponse
    {
        $validator = \Validator::make($request->all(), [
            'value_set' => 'required|exists:value_sets,id',
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => 'The given data was invalid.'], 422);
        }else{
            $this->repository->update($request->all(), $id);
            return response()->json(['message' => 'Category Updated Successfully']);
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

        return response()->json(['message' => 'Category Trashed Successfully']);
    }


    /**
     * @param $value_set_id
     * @return mixed
     */
    public function value_set_types($value_set_id)
    {
        return NominationType::where('value_set', $value_set_id)->get(); //todo remove
    }
    
    public function updateBadges(Request $request)
    {
        $request->validate([
            'nomination_type_id' => 'required|exists:nomination_types,id',
            'times' => 'required|integer',
            'active_url' => 'required|url',
            'not_active_url' => 'required|url',
            'points' => 'required|integer'
        ]);

        $type = $this->repository->find($request->nomination_type_id);

        $type->update([
            'times' => $request->times,
            'active_url' => $request->active_url,
            'not_active_url' => $request->not_active_url,
            'points' => $request->points,
        ]);

        return fractal($type, new BadgesTransformer);

    }

}
