<?php

namespace Modules\Reward\Http\Controllers;

use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Reward\Http\Requests\ProductCategoryRequest;
use Modules\Reward\Http\Requests\ProductRequest;
use Modules\Reward\Transformers\ProductCategoryTransformer;
use Modules\Reward\Transformers\ProductTransformer;
use Modules\Reward\Repositories\ProductCategoryRepository;
use Modules\Reward\Repositories\ProductRepository;
use Illuminate\Http\Request;
use Illuminate\Http\response;

class ProductCategoryController extends Controller
{
    private $repository;
    private $prod_repository;

    public function __construct(ProductCategoryRepository $repository,ProductRepository $prod_repository)
    {
        $this->repository = $repository;
        $this->prod_repository = $prod_repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $Categorys = $this->repository->MainCategory();

        return fractal($Categorys, new ProductCategoryTransformer);
    }

//    /**
//     * Display a listing of the resource.
//     *
//     * @return \Spatie\Fractal\Fractal
//     */
//    public function sub_prod($category_id): Fractal
//    {
//        $Product = $this->prod_repository->sub_prod($category_id);
//
//        return fractal($Product, new ProductTransformer);
//    }

    /**
     * @param $catalog_id
     *
     * @return Fractal
     */
    public function sub_prod($catalog_id): Fractal
    {
        $Product = $this->prod_repository->sub_prod($catalog_id);

        return fractal($Product, new ProductTransformer);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param ProductCategoryRequest $request
     * @return Fractal
     */
    public function store(ProductCategoryRequest $request)
    {
        $Category = $this->repository->create($request->all());

        return fractal($Category, new ProductCategoryTransformer);
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

        return fractal($Category, new ProductCategoryTransformer);
    }

    /**
     *
     * Update the specified resource in storage.
     *
     * @param ProductCategoryRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ProductCategoryRequest $request, $id): JsonResponse
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
