<?php

namespace Modules\Reward\Http\Controllers;

use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Reward\Http\Requests\ProductCatalogRequest;
use Modules\Reward\Transformers\ProductCatalogTransformer;
use Modules\Reward\Repositories\ProductCatalogRepository;

class ProductCatalogController extends Controller
{
    private $repository;

    public function __construct(ProductCatalogRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $Catalogs = $this->repository->get();

        return fractal($Catalogs, new ProductCatalogTransformer);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ProductCatalogRequest $request
     * @return Fractal
     */
    public function store(ProductCatalogRequest $request)
    {
        $Catalog = $this->repository->create($request->all());

        return fractal($Catalog, new ProductCatalogTransformer);
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
        $Catalog = $this->repository->find($id);

        return fractal($Catalog, new ProductCatalogTransformer);
    }

    /**
     *
     * Update the specified resource in storage.
     *
     * @param ProductCatalogRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ProductCatalogRequest $request, $id): JsonResponse
    {
        $this->repository->update($request->all(), $id);

        return response()->json(['message' => 'Catalog Updated Successfully']);
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

        return response()->json(['message' => 'Catalog Trashed Successfully']);
    }
}
