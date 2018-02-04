<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Siswa;
use App\Pelanggaran_Siswa;
use App\Pelanggaran;
use App\Penghargaan_Siswa;
use App\Laporan;
use Carbon\Carbon;
use DB;

class LaporanController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function index()
	{
		setlocale(LC_TIME, 'Indonesian');
		Carbon::setlocale('id');
		$dt=Carbon::now();
		//$pelanggaran= Pelanggaran_Siswa::orderBy('created_at')->get();
		$pelanggaran=	 Pelanggaran_siswa::select('pelanggaran_siswa.no','pelanggaran_siswa.no_induk','pelanggaran_siswa.kode_pelanggaran','pelanggaran_siswa.created_at','pelanggaran_siswa.user','siswa.nama_siswa','siswa.kelas','siswa.jurusan','pelanggaran.jenis_pelanggaran')
									->join('siswa','pelanggaran_siswa.no_induk','=','siswa.no_induk')
									->join('pelanggaran','pelanggaran_siswa.kode_pelanggaran','=','pelanggaran.kode_pelanggaran')
									->orderBy('pelanggaran_siswa.created_at', 'desc')->get();
										//	->where('no_induk', $siswa->no_induk);
		$pelanggaran2= pelanggaran_siswa::select('pelanggaran_siswa.no_induk','pelanggaran_siswa.kode_pelanggaran','pelanggaran_siswa.created_at','siswa.nama_siswa','siswa.kelas','siswa.jurusan','pelanggaran.jenis_pelanggaran')
									->join('siswa','pelanggaran_siswa.no_induk','=','siswa.no_induk')
									->join('pelanggaran','pelanggaran_siswa.kode_pelanggaran','=','pelanggaran.kode_pelanggaran')
									->where('pelanggaran_siswa.user','=','3')
									->whereDate('pelanggaran_siswa.created_at', DB::raw('CURDATE()'))->orderBy('pelanggaran_siswa.created_at', 'desc')->get();
										//	->where('no_induk', $siswa->no_induk);
		$penghargaan=  Penghargaan_siswa::select('penghargaan_siswa.no','penghargaan_siswa.no_induk','penghargaan_siswa.kode_penghargaan','penghargaan_siswa.created_at','penghargaan_siswa.user','siswa.nama_siswa','siswa.kelas','siswa.jurusan','penghargaan.jenis_penghargaan')
									->join('siswa','penghargaan_siswa.no_induk','=','siswa.no_induk')
									->join('penghargaan','penghargaan_siswa.kode_penghargaan','=','penghargaan.kode_penghargaan')
									->orderBy('penghargaan_siswa.created_at', 'desc')->get();
		$penghargaan2= Penghargaan_siswa::select('penghargaan_siswa.no_induk','penghargaan_siswa.kode_penghargaan','penghargaan_siswa.created_at','siswa.nama_siswa','siswa.kelas','siswa.jurusan','penghargaan.jenis_penghargaan')
									->join('siswa','penghargaan_siswa.no_induk','=','siswa.no_induk')
									->join('penghargaan','penghargaan_siswa.kode_penghargaan','=','penghargaan.kode_penghargaan')
									->where('user','=','3')
									->whereDate('penghargaan_siswa.created_at', DB::raw('CURDATE()'))->orderBy('penghargaan_siswa.created_at', 'desc')->get();
										
		$i=0;
		//$tanggal=$penghargaan2[$i]->created_at;
		//$penghargaan2[$i]->created_at=$tanggal->setTimeZone('Asia/Jakart')
		//$pelanggaran_list = Collection::make($pelanggaran);
		$pelmax = $pelanggaran->count();
		$pelmax2 = $pelanggaran2->count();
		$penmax = $penghargaan->count();
		$penmax2 = $penghargaan2->count();
		//$siswa = Siswa::findOrFail($id);
		//$pelanggaran = Pelanggaran::findOrFail($pel);
		//$penghargaan = Penghargaan::findOrFail($pen);
		//$pelanggaran_list = $pelanggaran;
		return view('laporan.index', compact('pelanggaran','i','penghargaan','pelmax','penmax','dt','penghargaan2','penmax2','pelanggaran2','pelmax2'));
	}

	public function create($id)
	{
		$siswa = Siswa::findOrFail($id);
		$list_pelanggaran = Pelanggaran::all();
		$list_penghargaan = Penghargaan::all();
		return view('laporan.create', compact('siswa', 'list_pelanggaran','list_penghargaan'));
	}
	public function store(Request $request)
	{
		$input = $request->all();
		$this->validate($request, [
		'no_induk' => 'required|string|max:9',
		'kode_pelanggaran' => 'sometimes',
		'kode_penghargaan' => 'sometimes',
		]);
		$laporan=Laporan::create($input);
		//Pelanggaran::create($request->all());
		return redirect('laporan');
	}
	public function destroy($id) {
		$pelanggaran = Pelanggaran::findOrFail($id);
		$pelanggaran->delete();
		return redirect('pelanggaran');
	}
	public function tes()
	{
		$siswa = Siswa::where('kelas','=','1')->where('jurusan','=','1')->get();
		return $siswa;
	}
}