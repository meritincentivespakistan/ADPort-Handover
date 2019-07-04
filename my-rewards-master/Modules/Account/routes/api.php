<?php

Route::put('accounts/{id}', 'AccountController@update');

Route::get('authenticated-account/data', 'AccountController@getAuthenticatedAccountData');

Route::post('authenticated-account/badges', 'AccountController@getAuthenticatedAccountBudges');

Route::post('give/{account}/permissions', 'AccountController@syncPermissions');
Route::resource('permissions', 'PermissionController');
Route::resource('roles', 'RoleController');
Route::get('/getRolesByProgram/{id}', 'RoleController@index');
Route::post('permissions/search', 'PermissionController@search');

Route::get('get/role/users/{id}', 'RoleController@getRoleAccounts');
Route::get('get/permission/users/{id}', 'PermissionController@getPermissionAccounts');

Route::get('role/{id}/permissions', 'RoleController@getRolePermissions');
Route::post('assignPermissionsToGroup', 'RoleController@assignPermissionsToGroup');


{
    /*  Passwords routes */
    Route::post('password/reset', [ 'uses' => 'PasswordsController@resetPassword', 'as' => 'password.reset' ]); // TODO  'middleware' => 'throttle:5,1',
    Route::post('password/reset/{token}', [ 'uses' => 'PasswordsController@confirmResetPassword', 'as' => 'confirmResetPassword' ]);
    Route::post('password/create', [ 'uses' => 'PasswordsController@createNewPassword', 'as' => 'createNewPassword' ]);
    Route::post('password/change/{account_id}', [ 'uses' => 'PasswordsController@changeOldPassword', 'as' => 'changeOldPassword' ]); // need auth middleware
}
