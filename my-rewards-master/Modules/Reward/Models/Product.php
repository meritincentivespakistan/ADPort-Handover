<?php

namespace Modules\Reward\Models;


use Illuminate\Database\Eloquent\Model;
use Laracodes\Presenter\Traits\Presentable;
use Illuminate\Database\Eloquent\SoftDeletes;


class Product extends Model
{

    use  SoftDeletes, Presentable;

    protected $presenter = ProgramPresenter::class;

    protected $fillable = [ 'name', 'value', 'image', 'quantity', 'likes', 'model_number', 'min_age', 'sku', 'category_id', 'catalog_id' ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(ProductCategory::class);
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function catalog(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(ProductCatalog::class);
    }


    /**
     * @return \Illuminate\Database\Eloquent\Relations\hasMany
     */
    public function sub()
    {
        return $this->hasMany(SubProduct::class);
    }

    public function product_seen()
    {
        return $this->hasOne(ProductsAccountsSeen::class);
    }


}

