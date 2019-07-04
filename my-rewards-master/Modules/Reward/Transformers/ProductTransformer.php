<?php namespace Modules\Reward\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Reward\Models\Product;

class ProductTransformer extends TransformerAbstract
{


    /**
     * @param ue $product
     *
     * @return array
     */
    public function transform(Product $product): array
    {
        return [
            'id'           => $product->id,
            'name'         => $product->name,
            'value'        => $product->value,
            'image'        => $product->image,
            'quantity'     => $product->quantity,
            'likes'        => $product->likes,
            'model_number' => $product->model_number,
            'min_age'      => $product->min_age,
            'sku'          => $product->sku,
            'category_id'  => optional($product->category)->name ?? null,
            'catalog_id'   => $product->catalog->name,
            'Sub'          => $product->sub()->select('id', 'name', 'value')->get()->all(),
            'seen'         => $product->product_seen ? $product->product_seen->account_id === 1 : FALSE
        ];


    }

}
