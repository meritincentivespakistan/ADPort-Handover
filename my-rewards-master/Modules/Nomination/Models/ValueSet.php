<?php

namespace Modules\Nomination\Models;

use Illuminate\Database\Eloquent\Model;

class ValueSet extends Model
{
    protected $fillable = ['name','description'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\hasMany
     */
    public function types()
    {
        return $this->hasMany(NominationType::class,'value_set');
    }

}
