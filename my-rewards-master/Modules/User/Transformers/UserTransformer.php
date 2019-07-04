<?php namespace Modules\User\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\User\Models\ProgramUsers;

class UserTransformer extends TransformerAbstract
{
    /**
     * @param ProgramUsers $User
     *
     * @return array
     */
    public function transform(ProgramUsers $User): array
    {
        return [
            'id' => $User->id,
            'name' => $User->first_name . ' ' . $User->last_name,
            'email' => $User->email,
            'username' => $User->username,
            'account_id' => $User->account_id,
            'user_groups' => optional($User->account)->getRoleNames(),
            'address' => $User->address_1 . ' ' . $User->address_2,
            'user_points' => $User->point_balance
        ];
    }
}
