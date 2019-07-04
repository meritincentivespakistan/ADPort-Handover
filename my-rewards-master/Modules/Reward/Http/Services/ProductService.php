<?php namespace Modules\Reward\Http\Services;

use Modules\Reward\Repositories\ProductRepository;

/**
 * Class CatalogueService
 *
 * @package Modules\Reward\Http\Services
 */
class ProductService
{
    private $repository;

    public function __construct(ProductRepository $repository)
    {
        $this->repository = $repository;
    }

    public function search($keyword)
    {
        return $this->repository->search($keyword);
    }
    
}
