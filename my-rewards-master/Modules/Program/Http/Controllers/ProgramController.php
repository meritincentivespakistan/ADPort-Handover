<?php namespace Modules\Program\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Program\Http\Requests\ProgramRequest;
use Modules\Program\Http\Services\ProgramService;
use Modules\Program\Transformers\ProgramsTransformer;
use Spatie\Fractal\Fractal;

class ProgramController extends Controller
{
    private $program_service;

    public function __construct(ProgramService $program_service)
    {
        $this->program_service = $program_service;
    }


    /**
     * @param Request $request
     *
     * @return Fractal
     */
    public function index(Request $request): Fractal
    {
        $programs = $this->program_service->get(30, $request->query());

        return fractal($programs, new ProgramsTransformer());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ProgramRequest $request
     *
     * @return mixed
     */
    public function store(ProgramRequest $request)
    {
        $program = $this->program_service->store($request->all());

        return fractal($program, new ProgramsTransformer());
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
        $program = $this->program_service->find($id);

        return fractal($program, new ProgramsTransformer());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param ProgramRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ProgramRequest $request, $id): JsonResponse
    {
        $this->program_service->update($request->all(), $id);

        return response()->json([ 'message' => 'Program Updated Successfully' ]);
    }


    /**
     *
     * Remove the specified resource from storage.
     *
     * @param $id
     *
     * @return JsonResponse
     */
    public function destroy($id): JsonResponse
    {
        $this->program_service->destroy($id);

        return response()->json([ 'message' => 'Program Trashed Successfully' ]);
    }

}
