<?php namespace Modules\Reward\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Reward\Models\ProductOrder;
use Modules\User\Models\ProgramUsers;

class ProductOrderTransformer extends TransformerAbstract
{
    /**
     * @param Catalogue $ProductOrder
     *
     * @return array
     */
    public function transform(ProductOrder $ProductOrder): array
    {
        return [
            'id'         => $ProductOrder->id,
            'value'      => $ProductOrder->value,
            'product'    => optional($ProductOrder->product)->name,
            'image'      => optional($ProductOrder->product)->image,
            'name'       => optional($ProductOrder->account)->name,
            'account_id' => $ProductOrder->account_id,
            'user'       => ProgramUsers::where('account_id', $ProductOrder->account_id)->first(),
            'first_name' => $ProductOrder->first_name,
            'last_name'  => $ProductOrder->last_name,
            'email'      => $ProductOrder->email,
            'phone'      => $ProductOrder->phone,
            'address'    => $ProductOrder->address,
            'city'       => $ProductOrder->city,
            'comment'    => $ProductOrder->comment,
            'date'       => $ProductOrder->created_at,
            'status'     => $ProductOrder->status,
        ];
    }
}
