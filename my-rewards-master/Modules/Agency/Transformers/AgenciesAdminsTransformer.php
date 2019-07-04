<?php namespace Modules\Agency\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Agency\Models\AgenciesAdmin;

class AgenciesAdminsTransformer extends TransformerAbstract
{
    /**
     * @param AgenciesAdmin $model
     *
     * @return array
     */
    public function transform(AgenciesAdmin $model): array
    {
        return [
            'id'             => $model->id,
            'agency_id'      => $model->agency_id,
            'name'           => $model->account->name,
            'email'          => $model->account->email,
            'contact_number' => $model->account->contact_number,
            'account_id'     => $model->account_id,
        ];
    }
}
