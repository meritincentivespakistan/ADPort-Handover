<?php

namespace Modules\Reward\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCatalog extends Model
{
    protected $fillable = ['name'];

    protected $dates = ['deleted_at'];
}
