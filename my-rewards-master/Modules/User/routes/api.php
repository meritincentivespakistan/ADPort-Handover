<?php


Route::resource('program/{program}/users', 'UserController');
Route::post('program/users/search', 'UserController@search');
Route::post('assign/user/to/group', 'UserController@assignUserToGroup');

Route::post('program/users/import', 'UserManageController@import');
Route::get('program/users/download/{program_id}', 'UserManageController@download');
Route::get('program/users/export/{program_id}', 'UserManageController@export');

/* --------------- users Points --------------- */
Route::resource('programs/{id}/users/{user_id}/points', 'PointController', [ 'except' => 'show' ]);
Route::get('programs/{id}/users/{user_id}/points/current', 'PointController@currentBalance');
Route::post('users/{user_id}/points/add', 'PointController@addPointsToSpecificUser');

// User Goal Item
Route::post('users/{user_id}/goal_item', 'GoalItemController@store');
Route::get('users/{user_id}/goal_item', 'GoalItemController@getUserGoalItem');

