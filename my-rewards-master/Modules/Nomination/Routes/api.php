<?php


Route::resource('nominations', 'NominationController');

Route::resource('value_set', 'ValueSetController');

Route::get('nomination/type/by/{value_set_id}', 'NominationTypeController@getNominationTypeBy');
Route::resource('nomination_type', 'NominationTypeController');
Route::put('update/badge', 'NominationTypeController@updateBadges');

Route::get('badges/{account_id}', 'NominationTypeController@NominationBadges');

Route::get('nominations/{nomination_id}/values', 'NominationController@NominationValues');
Route::get('nominations/{nomination_id}/wall', 'NominationController@NominationWall');
Route::get('badges/wall', 'NominationController@NominationBadgesWall');

Route::resource('nominations/{id}/decline', 'NominationDeclineController');

Route::resource('nominations/{id}/type', 'NominationTypeController');

Route::resource('user_nominations', 'UserNominationController');
Route::get('user_nomination/{id}/{account_id}', 'UserNominationController@getUsersBy');

Route::get('user_nominations/{nomination_id}/approved_level_one/{account_id}', 'UserNominationController@getApprovedUsersLevelOne');
Route::get('user_nominations/{nomination_id}/approved_level_two/{account_id}', 'UserNominationController@getApprovedUsersLevelTwo');

Route::resource('nominations/{id}/awards_levels', 'AwardsLevelController');

Route::resource('nominations/{id}/approval', 'SetApprovalController');

Route::get('getNominationData/{id}', 'UserNominationController@getNominationData');

Route::get('icons', 'NominationController@NominationValuesIcons');
Route::get('icons2', 'NominationController@NominationValuesIcons2');


Route::put('update/level/one/{userNominationId}', 'UserNominationController@updateLevelOne');
Route::put('update/level/two/{userNominationId}', 'UserNominationController@updateLevelTwo');
Route::put('update/points/{userNominationId}', 'UserNominationController@updatePoints');

Route::get('testMail', 'UserNominationController@testMail');
Route::get('approvers/{id}', 'UserNominationController@list_first_approvers');


Route::get('nominations/{nomination_id}/users', 'NominationController@users');

Route::get('nomination/report', 'UserNominationController@report');
