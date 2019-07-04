<?php namespace Modules\Account\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Account\Models\Account;
use Modules\User\Models\UsersPoint;

class AccountTransformer extends TransformerAbstract
{
    /**
     * @param Account $account
     *
     * @return array
     */
    public function transform(Account $account): array
    {
        return [
            'id'              => $account->id,
            'name'            => $account->name,
            'email'           => $account->email,
            'type'            => $account->type,
            'user_id'         => optional($account->user)->id,
            'program_id'      => $account->client_admins->client->programs->id ?? $account->user->program_id, //TODO WTF REALLY
            'last_login'      => $account->last_login,
            'login_ip'        => $account->login_ip,
            'contact_number'  => $account->contact_number,
            'current_balance' => UsersPoint::where('user_id', optional($account->user)->id)->sum('value'),
            'permissions'     => $account->permissions()->pluck('value', 'id'),
            'badges'          => $account->badges()->pluck('name', 'active_url')
        ];
    }
}


