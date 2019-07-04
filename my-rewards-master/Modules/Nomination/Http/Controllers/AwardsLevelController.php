<?php namespace Modules\Nomination\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Nomination\Http\Requests\AwardsLevelRequest;
use Modules\Nomination\Http\Services\AwardsLevelService;
use Modules\Nomination\Http\Services\NominationTypeService;
use Modules\Nomination\Transformers\AwardsLevelTransformer;
use Spatie\Fractal\Fractal;
use Illuminate\Database\Eloquent\ModelNotFoundException; //Import exception.

class AwardsLevelController extends Controller
{
    private $nomination_service, $awards_level_service;

    public function __construct(NominationTypeService $nomination_service, AwardsLevelService $awards_level_service)
    {
        $this->nomination_service         = $nomination_service;
        $this->awards_level_service       = $awards_level_service;
    }


    /**
     * @param $nomination_type_id
     *
     * @return Fractal
     */
    public function index($nomination_type_id): Fractal
    {
        $AwardsLevels = $this->nomination_service->find($nomination_type_id)->awards_level;
        return fractal($AwardsLevels, new AwardsLevelTransformer());
    }

    /**
     * @param $nomination_type_id
     * @param AwardsLevelRequest $request
     *
     * @return Fractal
     */
    public function store($nomination_type_id, AwardsLevelRequest $request): Fractal
    {
        $Nomination = $this->nomination_service->find($nomination_type_id);

        $AwardsLevel = $this->awards_level_service->store($Nomination, $request->all());

        return fractal($AwardsLevel, new AwardsLevelTransformer());
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
        $AwardsLevel = $this->awards_level_service->show($id);

        return fractal($AwardsLevel, new AwardsLevelTransformer());
    }

    /**
     * @param AwardsLevelRequest $request
     * @param $nomination_type_id
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(AwardsLevelRequest $request, $nomination_type_id, $id): JsonResponse
    {
        $this->awards_level_service->update($request->all(), $id);
        return response()->json([ 'message' => 'Nomination\'s Awards Levels  Updated Successfully' ]);
    }


    /**
     * @param $nomination_type_id
     * @param $id
     *
     * @return JsonResponse
     */
    public function destroy($nomination_type_id, $id): JsonResponse
    {
        try {
            $this->awards_level_service->destroy($id);

            return response()->json([ 'message' => 'Nomination\'s Awards Levels Trashed Successfully' ]);

        } catch (ModelNotFoundException $e) {
            return response()->json([ 'message' => 'Nomination\'s Awards Levels Not Found' ]);
        }


    }

}
