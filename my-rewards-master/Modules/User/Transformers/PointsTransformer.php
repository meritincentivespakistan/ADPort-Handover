<?php namespace Modules\User\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\User\Models\UsersPoint;

class PointsTransformer extends TransformerAbstract
{
    /**
     * @param ProgramsPoint $model
     *
     * @return array
     * @throws \Laracodes\Presenter\Exceptions\PresenterException
     */
    public function transform(UsersPoint $model): array
    {
        return [
            'id'               => $model->id,
            'value'            => $model->value,
            'user_id'          => $model->user_id,
            'transaction_type' => $model->present()->transaction_type,
            'description'      => $model->description,
            'balance'          => $model->balance,
            'created_at'       => $model->created_at,
            'created_by'       => [
                'name' => $model->present()->created_by
            ]
        ];
    }
}
