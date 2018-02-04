<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pelanggaran_Siswa;
use App\Siswa;
use PDF;
use Carbon\Carbon;

class RekapController extends Controller
{
    public function __construct()
	{
		$this->middleware('auth');
	}
	public function index(){
		$angkatan = collect( (object) array(
     (object)  ['no' => '1', 'kelas' => '1', 'jurusan' => '1'],
     (object)  ['no' => '2', 'kelas' => '1', 'jurusan' => '2'],
     (object)  ['no' => '3', 'kelas' => '1', 'jurusan' => '3'],
     (object)  ['no' => '4', 'kelas' => '2', 'jurusan' => '1'],
     (object)  ['no' => '5', 'kelas' => '2', 'jurusan' => '2'],
     (object)  ['no' => '6', 'kelas' => '2', 'jurusan' => '3'],
     (object)  ['no' => '7', 'kelas' => '3', 'jurusan' => '1'],
     (object)  ['no' => '8', 'kelas' => '3', 'jurusan' => '2'],
     (object)  ['no' => '9', 'kelas' => '3', 'jurusan' => '3'],
     )
		);
		//return $angkatan;
		return view('rekap.index', compact('angkatan'));
	}
	public function show($k, $j){
		$siswa_list = Siswa::where('kelas','=',$k)->where('jurusan','=',$j)->get();
		return view('rekap.show', compact('siswa_list'));
	}
	public function cetak($k, $j){
		$siswa = Siswa::where('kelas','=',$k)->where('jurusan','=',$j)->orderBy('no_induk')->get();
		$jumlah = $siswa->count();
		if (Carbon::now()->month < 7){
			$smt = 'Genap';
		}
		else{
			$smt = 'Ganjil';
		}
		setlocale(LC_TIME, 'Indonesian');
		Carbon::setlocale('id');
		$dt=Carbon::now();
		$i=0;
		$pdf = PDF::loadview('rekap.cetak', compact('halaman', 'siswa','dt','i','jumlah','smt'))
				->setOptions(['defaultFont' => 'serif','isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]);
		return $pdf->stream('Laporan Kelas '.$k .'-'.$j.'.pdf');
	}
}
