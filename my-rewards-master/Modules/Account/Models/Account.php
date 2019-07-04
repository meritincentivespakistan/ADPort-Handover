<?php namespace Modules\Account\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Modules\Agency\Models\ClientsAdmin;
use Modules\Nomination\Models\NominationType;
use Modules\User\Models\ProgramUsers;
use Spatie\Permission\Traits\HasRoles;
use \Illuminate\Database\Eloquent\Relations\HasMany;
use \Illuminate\Database\Eloquent\Relations\HasOne;

class Account extends Authenticatable
{
    use HasApiTokens, Notifiable, HasRoles;

    /**
     * @var array
     */
    protected $dates = [ 'last_login' ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'last_login', 'login_ip', 'type', 'contact_number', 'email_verified_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * @return HasOne
     */
    public function client_admins()
    {
        return $this->hasOne(ClientsAdmin::class); //todo WTF
    }


    /**
     * @param $password
     */
    public function setPasswordAttribute($password): void
    {
        $this->attributes['password'] = bcrypt($password);
    }

    public function user()
    {
        return $this->hasOne(ProgramUsers::class);
    }

    /**
     * @return HasMany
     */
    public function badges()
    {
        return $this->hasMany(AccountBadges::class);
    }
}
