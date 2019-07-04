<?php

Route::resource('clients/{id}/admins', 'ClientAdminsController');
Route::resource('clients', 'ClientController');
Route::resource('catalogues', 'CatalogueController');

Route::resource('agencies', 'AgencyController');
Route::resource('agencies/{id}/admins', 'AgencyAdminsController');
Route::get('agencies/{id}/clients', 'ClientController@agencyClients');
