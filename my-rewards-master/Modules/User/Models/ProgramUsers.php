<?php

namespace Modules\User\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Account\Models\Account;

class ProgramUsers extends Model
{
    protected $guarded = [];

    public function account()
    {
        return $this->belongsTo(Account::class, 'account_id');
    }

    public function points()
    {
        return $this->hasOne(UsersPoint::class, 'user_id');
    }
}
