<?php namespace Modules\Nomination\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Nomination\Models\UserNomination;
use Modules\Account\Models\Account;

class UserNominationTransformer extends TransformerAbstract
{
    /**
     * @param UserNomination $model
     *
     * @return array
     */
    public function transform(UserNomination $model): array
    {
        return [
            'id'                        => $model->id,
            'nomination_id'             => $model->campaign,
            'user'                      => $model->user,
            'nominated_user'            => $model->user_relation,
            'nominated_user_group_name' => $model->account->getRoleNames(),
            'account_id'                => $model->account_id,
            'nominated_by'              => $model->account,
            'nominated_by_group_name'   => $model->account->getRoleNames(),
            'user name'                 => optional($model->account)->name, //todo remove all optional and check all relation IN validation before insert
            'user email'                => optional($model->account)->email,
            'value'                     => $model->value,
            'Type'                      => optional($model->type)->name,
            'value set'                 => optional($model->type)->value_set,
            'value_set_name'            => optional($model->type)->valueset->name,
            'level'                     => optional($model->level)->name,
            'points'                    => optional($model->level)->points,
            'logo'                      => optional($model->type)->logo,
            'reason'                    => $model->reason,
            'attachments'               => $model->attachments,
            'Approved for level 1'      => $model->level_1_approval,
            'Approved for level 2'      => $model->level_2_approval,
            'Decline reason'            => $model->decline_reason,
        ];
    }

}

