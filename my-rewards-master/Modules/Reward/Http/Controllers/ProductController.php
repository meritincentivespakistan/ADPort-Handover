<?php

namespace Modules\Reward\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Reward\Http\Services\ProductService;
use Modules\Reward\Models\ProductsAccountsSeen;
use Spatie\Fractal\Fractal;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Reward\Http\Requests\ProductRequest;
use Modules\Reward\Transformers\ProductTransformer;
use Modules\Reward\Repositories\ProductRepository;

class ProductController extends Controller
{
    private $repository, $service;

    public function __construct(ProductRepository $repository, ProductService $service)
    {
        $this->repository = $repository;
        $this->service    = $service;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Spatie\Fractal\Fractal
     */
    public function index(): Fractal
    {
        $products = $this->repository->paginate();

        return fractal($products, new ProductTransformer);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param ProductRequest $request
     *
     * @return Fractal
     */
    public function store(ProductRequest $request)
    {
        $product = $this->repository->create($request->all());

        return fractal($product, new ProductTransformer);
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
        $product = $this->repository->find($id);

        ProductsAccountsSeen::firstOrCreate([ 'account_id' => 1, 'product_id' => $product->id ]);

        return fractal($product, new ProductTransformer);
    }


    /**
     *
     * Update the specified resource in storage.
     *
     * @param ProductRequest $request
     * @param $id
     *
     * @return JsonResponse
     */
    public function update(ProductRequest $request, $id): JsonResponse
    {
        $this->repository->update($request->all(), $id);

        return response()->json([ 'message' => 'Product Updated Successfully' ]);
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

        return response()->json([ 'message' => 'Product Trashed Successfully' ]);
    }

    public function search(Request $request)
    {
        $products = $this->service->search($request->query('keyword'));

        return fractal($products, new ProductTransformer);
    }


}
