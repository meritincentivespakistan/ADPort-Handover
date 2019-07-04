<?php namespace Modules\Reward\Repositories;

use App\Repositories\Repository;
use Modules\Reward\Models\ProductOrder;


class ProductOrderRepository extends Repository
{
    /**
     * @var string
     */
    protected $modeler = ProductOrder::class;


    /**
     * @param $token
     * @param $type || type 0 for password resets &&  type 1 for activation link
     *
     * @return mixed
     */
    public function UserOrders($account_id)
    {
        return ProductOrder::where('account_id', $account_id)->get();
    }

    public function getPendingOrders()
    {
        return $this->modeler->where('status' , 1)->paginate(20);
    }

    public function getConfirmedOrders()
    {
        return $this->modeler->where('status' , 2)->paginate(20);
    }

    public function getCancelledOrders()
    {
        return $this->modeler->where('status' , -1)->paginate(20);
    }

    public function getShippedOrders()
    {
        return $this->modeler->where('status' , 3)->paginate(20);
    }
}
