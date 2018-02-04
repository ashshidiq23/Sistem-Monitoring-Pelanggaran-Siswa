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
Route::group(['middleware' => 'web'], function(){
	Auth::routes();
	//pages controller
	Route::get('/', 'PagesController@dashboard');
	Route::get('about', 'PagesController@about');
	Route::get('dashboard', 'PagesController@dashboard');
	//siswa controller
	Route::get('siswa/cari', 'SiswaController@cari');


	Route::get('siswa', 'SiswaController@index');
	Route::get('siswa/create', 'SiswaController@create');
	Route::post('siswa', 'SiswaController@store');
	Route::get('siswa/{siswa}', 'SiswaController@show');
	Route::get('siswa/reset', 'SiswaController@resetPoin');
	Route::get('siswa/{siswa}/edit', 'SiswaController@edit');
	Route::patch('siswa/{siswa}', 'SiswaController@update');
	Route::get('siswa/{siswa}/cetak', 'SiswaController@cetak');

	Route::delete('siswa/{siswa}', 'SiswaController@destroy');
	Route::get('date-mutator', 'SiswaController@dateMutator');

	Route::get('laporan/pelanggaran/{siswa}/create', 'LapPelanggaranController@create');
	Route::post('laporan/pelanggaran/{siswa}', 'LapPelanggaranController@store');
	Route::delete('laporan/pelanggaran/{id}/hapus', 'LapPelanggaranController@destroy');
	Route::get('laporan/penghargaan/{siswa}/create', 'LapPenghargaanController@create');
	Route::post('laporan/penghargaan/{siswa}', 'LapPenghargaanController@store');
	Route::delete('laporan/penghargaan/{id}', 'LapPenghargaanController@destroy');
	route::get('tes', 'LaporanController@tes');

	//pelanggaran controller
	Route::get('pelanggaran', 'PelanggaranController@index');
	Route::get('pelanggaran/create', 'PelanggaranController@create');
	Route::post('pelanggaran', 'PelanggaranController@store');
	Route::get('pelanggaran/{pelanggaran}/edit', 'PelanggaranController@edit');
	Route::patch('pelanggaran/{pelanggaran}', 'PelanggaranController@update');
	Route::delete('pelanggaran/{pelanggaran}', 'PelanggaranController@destroy');
	//penghargaan controller
	Route::get('penghargaan', 'PenghargaanController@index');
	Route::get('penghargaan/create', 'PenghargaanController@create');
	Route::post('penghargaan', 'PenghargaanController@store');
	Route::get('penghargaan/{penghargaan}/edit', 'PenghargaanController@edit');
	Route::patch('penghargaan/{penghargaan}', 'PenghargaanController@update');
	Route::delete('penghargaan/{penghargaan}', 'PenghargaanController@destroy');
	//pelsis controller
	Route::get('laporan', 'LaporanController@index');

	//pengguna
	Route::get('pengguna', 'UserController@index');
	Route::delete('pengguna/{pengguna}', 'UserController@destroy');

	//rekap
	Route::get('rekap', 'RekapController@index');
	Route::get('rekap/lihat/{kelas}/{jurusan}', 'RekapController@show');
	Route::get('rekap/cetak/{kelas}/{jurusan}', 'RekapController@cetak');
	//Route::get('/home', 'HomeController@index');
});
