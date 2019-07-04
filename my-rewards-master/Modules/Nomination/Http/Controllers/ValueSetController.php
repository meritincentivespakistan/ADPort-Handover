<?php

namespace Modules\Nomination\Http\Controllers;

use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Nomination\Http\Requests\ValueSetRequest;
use Modules\Nomination\Transformers\ValueSetTransformer;
use Modules\Nomination\Repositories\ValueSetRepository;
use Modules\Nomination\Http\Services\NominationTypeService;

class ValueSetController extends Controller
{
    private $repository;
    private $types_services;

    public function __construct(ValueSetRepository $repository,NominationTypeService $types_services)
    {
        $this->repository = $repository;
        $this->types_services = $types_services;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $types = $this->repository->get();
        return fractal($types, new ValueSetTransformer);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function myorders($account_id): Fractal
    {
        $types = $this->repository->UserOrders($account_id);
        return fractal($types, new ValueSetTransformer);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ValueSetRequest $request
     * @return Fractal
     */
    public function store(ValueSetRequest $request)
    {

        try {
        $Category = $this->repository->create($request->all());

        return fractal($Category, new ValueSetTransformer);

        } catch (ModelNotFoundException $e) {
            return response()->json(['message' => 'The given data was invalid.', 'errors' => $validator->errors()], 422);

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

        return fractal($Category, new ValueSetTransformer);
    }

    /**
     *
     * Update the specified resource in storage.
     *
     * @param ValueSetRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ValueSetRequest $request, $id): JsonResponse
    {
        $this->repository->update($request->all(), $id);

        return response()->json(['message' => 'Category Updated Successfully']);
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
}
