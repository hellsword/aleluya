<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('principal');
});


//para poder cerrar sesion
Route::get('/logout','Auth\LoginController@logout');

Route::get('appFiltros','ServiciosController@filtros');
Route::get('detalleServicio/{id_anuncio}','ServiciosController@mostrar');
//Route::post('nuevoServicio','ServiciosController@store');

//Transferencia de datos
Route::resource('appUltimosServicios','HomeController');
Route::resource('appServicios','ServiciosController');
Route::resource('appAnuncios','AnuncioController');
Route::resource('usuarios','UserController');

Route::resource('cupones','CuponController');


Route::get('/{vue?}', function () { return view('principal'); })->where('vue', '[\/\w\.-]*');

Auth::routes();




