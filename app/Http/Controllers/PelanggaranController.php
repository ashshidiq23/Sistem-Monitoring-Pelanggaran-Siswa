<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Pelanggaran;

class PelanggaranController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function index()
	{
		$pelanggaran_list=Pelanggaran::all();
		$pelanggaran_a= Pelanggaran::where('kode_pelanggaran','LIKE', "a%")->get();
		$pelanggaran_b= Pelanggaran::where('kode_pelanggaran','LIKE', "b%")->get();
		$pelanggaran_c= Pelanggaran::where('kode_pelanggaran','LIKE', "c%")->get();
		$pelanggaran_d= Pelanggaran::where('kode_pelanggaran','LIKE', "d%")->get();
		$pelanggaran_e= Pelanggaran::where('kode_pelanggaran','LIKE', "e%")->get();
		return view('pelanggaran.index', compact('pelanggaran_list','pelanggaran_a','pelanggaran_b','pelanggaran_c','pelanggaran_d','pelanggaran_e'));
	}

	public function create()
	{
		return view('pelanggaran.create', compact('halaman'));
	}
	public function store(Request $request)
	{
		$input = $request->all();
		$this->validate($request, [
		'kode_pelanggaran' => 'required|string|max:9|unique:pelanggaran,kode_pelanggaran',
		'jenis_pelanggaran' => 'required|string',
		'poin' => 'required|integer',
		]);
		$pelanggaran=Pelanggaran::create($input);
		//Pelanggaran::create($request->all());
		return redirect('pelanggaran');
	}
	public function destroy($id) {
		$pelanggaran = Pelanggaran::findOrFail($id);
		$pelanggaran->delete();
		return redirect('pelanggaran');
	}
}