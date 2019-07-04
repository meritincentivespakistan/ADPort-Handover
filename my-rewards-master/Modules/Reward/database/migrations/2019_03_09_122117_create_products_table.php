<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('value');
            $table->string('image');
            $table->integer('seen')->default(0);;
            $table->string('quantity')->nullable();
            $table->string('base_price')->nullable();
            $table->string('likes')->nullable();
            $table->string('model_number')->nullable();
            $table->string('min_age')->nullable();
            $table->string('sku')->nullable();
            $table->integer('category_id')->unsigned()->nullable(); // may have not sub category
            $table->integer('catalog_id')->unsigned();
            $table->softDeletes();
            $table->timestamps();
//            $table->foreign('category_id')->references('id')->on('product_categories')->onDelete('cascade');
            $table->foreign('catalog_id')->references('id')->on('product_catalogs')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
