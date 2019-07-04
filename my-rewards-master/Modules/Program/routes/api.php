<?php

Route::resource('programs', 'ProgramController');

/* --------------- Program Domains --------------- */
Route::resource('programs/{id}/domains', 'DomainController');


/* --------------- Program Points --------------- */
Route::resource('programs/{id}/points', 'PointController', [ 'except' => 'show' ]);
Route::get('programs/{id}/points/current', 'PointController@currentBalance');

/* --------------- Users Points --------------- */
Route::resource('programs/{id}/users/{user_id}/points', 'PointController', [ 'except' => 'show' ]);
Route::get('programs/{id}/users/{user_id}/points/current', 'PointController@currentBalance');

/* --------------- Program Points Settings --------------- */
Route::get('programs/{id}/points-expiries', 'PointExpiresController@index');
Route::post('programs/{id}/points-expiries', 'PointExpiresController@handleExpiration');


/* --------------- Program Points Settings --------------- */
Route::put('programs/{id}/points_per_currency', 'PointSettingsController@updatePointsPerCurrencyValue');
Route::put('programs/{id}/country_currency_rate', 'PointSettingsController@updateCountryCourrencyRate');
Route::put('programs/{id}/country_currency_rate', 'PointSettingsController@updateBudgetStatus');


/* --------------- Program Points Budget --------------- */
Route::get('programs/{id}/budget', 'PointsBudgetController@index');
Route::put('programs/{id}/budget', 'PointsBudgetController@update');
Route::put('programs/{id}/budget-status', 'PointsBudgetController@changeBudgetStatus');

Route::get('currencies', 'CurrencyController@index');

