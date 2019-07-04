<?php namespace Modules\Program\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Currency extends Model
{
    protected $fillable = [ 'name' ];

    public $timestamps = FALSE;
}
