<?php

Route::resource('catalogs', 'ProductCatalogController');
Route::resource('product_categories', 'ProductCategoryController');

Route::get('products/search', 'ProductController@search');
Route::resource('products', 'ProductController');


Route::get('orders/pending', 'ProductOrderController@getPendingOrders');
Route::get('orders/confirmed', 'ProductOrderController@getConfirmedOrders');
Route::get('orders/cancelled', 'ProductOrderController@getCancelledOrders');
Route::get('orders/shipped', 'ProductOrderController@getShippedOrders');
Route::resource('orders', 'ProductOrderController');

Route::resource('sub-products', 'SubProductController');
Route::resource('user-catalogs', 'UserProductCatalogController');
Route::resource('user-category', 'UserProductCategoryController');
Route::resource('user-products', 'UserProductController');
Route::get('myorders/{account_id}', 'UserProductOrderController@myorders')->name('myorders');
Route::get('cat_prod/{catalog_id}', 'ProductCategoryController@sub_prod')->name('sub_prod');
//Route::get('cat_prod/{category_id}', 'ProductCategoryController@sub_prod')->name('sub_prod');
Route::resource('my-orders', 'UserProductOrderController');

Route::post('products/import/{program_id}', 'ImportsController@import');

Route::post('orders/{id}/confirm', 'ProductOrderController@confirmOrder');
Route::post('orders/{id}/ship', 'ProductOrderController@shipOrder');
Route::post('orders/{id}/cancel', 'ProductOrderController@cancelOrder');
