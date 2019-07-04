<?php namespace Modules\Reward\Repositories;

use App\Repositories\Repository;
use Modules\Reward\Models\Product;

class ProductRepository extends Repository
{
    /**
     * @var string
     */
    protected $modeler = Product::class;

    /**
     * @param $catalog_id
     *
     * @return mixed
     */
    public function sub_prod($catalog_id)
    {
        return Product::where("catalog_id", $catalog_id)->get();
    }

    /**
     * @param $keyword
     *
     * @return mixed
     */
    public function search($keyword)
    {
        return $this->modeler->where("name", 'like', "%$keyword%")->get();
    }


}
