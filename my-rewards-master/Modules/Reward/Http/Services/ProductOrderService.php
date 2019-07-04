<?php namespace Modules\Reward\Http\Services;

use Illuminate\Support\Facades\Mail;
use Modules\Reward\Mails\OrderCancellation;
use Modules\Reward\Mails\OrderConfirmation;
use Modules\Reward\Mails\OrderShipping;
use Modules\Reward\Repositories\ProductOrderRepository;

/**
 * Class CatalogueService
 *
 * @package Modules\Reward\Http\Services
 */
class ProductOrderService
{
    protected $repository;

    /**
     * ProductOrderService constructor.
     *
     * @param ProductOrderRepository $repository
     */
    public function __construct(ProductOrderRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @param $id
     *
     * @return bool
     */
    public function confirmOrder($id): bool
    {
        $order = $this->repository->find($id);

        if ($order->status !== 1) {
            return FALSE;
        }

        $this->repository->update([ 'status' => 2 ], $id);

        Mail::send(new OrderConfirmation($order, $order->account, $order->product));

        return TRUE;
    }

    /**
     * @param $id
     *
     * @return bool
     */
    public function shipOrder($id): bool
    {
        $order = $this->repository->find($id);

        if ($order->status !== 2) {
            return FALSE;
        }

        $this->repository->update([ 'status' => 3 ], $id);

        Mail::send(new OrderShipping($order, $order->account, $order->product));

        return TRUE;
    }

    /**
     * @param $id
     *
     * @return bool
     */
    public function cancelOrder($id): bool
    {
        $order = $this->repository->find($id);

        if ($order->status === 3 || $order->status === -1) {
            return FALSE;
        }

        $this->repository->update([ 'status' => -1 ], $id);

        Mail::send(new OrderCancellation($order, $order->account, $order->product));

        return TRUE;
    }

    /**
     * @return mixed
     */
    public function getPendingOrders()
    {
        return $this->repository->getPendingOrders();
    }

    /**
     * @return mixed
     */
    public function getConfirmedOrders()
    {
        return $this->repository->getConfirmedOrders();
    }

    /**
     * @return mixed
     */
    public function getCancelledOrders()
    {
        return $this->repository->getCancelledOrders();
    }

    /**
     * @return mixed
     */
    public function getShippedOrders()
    {
        return $this->repository->getShippedOrders();
    }

}
