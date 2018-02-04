<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Pelanggaran_Siswa;
use App\Penghargaan_Siswa;
use DB;

class PagesController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function homepage()
	{

		return view('pages.homepage');
	}
	public function about()
	{
		$halaman='about';
		return view('pages.about');
	}
	public function dashboard()
	{
		$jumlah_siswa = Siswa::count();
		$pelanggaran =Pelanggaran_siswa::count();
		$penghargaan =Penghargaan_siswa::count();
		$pelanggaran_list =	 Pelanggaran_siswa::select('pelanggaran_siswa.no','pelanggaran_siswa.no_induk','siswa.jurusan','siswa.kelas','siswa.jk')
												->join('siswa','pelanggaran_siswa.no_induk','=','siswa.no_induk');
	  $rpl = clone $pelanggaran_list;
	  $tkj = clone $pelanggaran_list;
	  $ap = clone $pelanggaran_list;
	  //jurusan rpl
		$pelanggaran_rplq = $rpl->where('siswa.jurusan','=','1');
		$pelanggaran_rpl = $pelanggaran_rplq->count();
		$rpl1	= clone $pelanggaran_rplq;
		$rpl1 = $rpl1->where('siswa.kelas','=','1')->count();
		$rpl2	= clone $pelanggaran_rplq;
		$rpl2 = $rpl2->where('siswa.kelas','=','2')->count();
		$rpl3	= clone $pelanggaran_rplq;
		$rpl3 = $rpl3->where('siswa.kelas','=','3')->count();
		//jurusan tkj
		$pelanggaran_tkjq = $tkj->where('siswa.jurusan','=','2');
		$pelanggaran_tkj = $pelanggaran_tkjq->count();
		$tkj1	= clone $pelanggaran_tkjq;
		$tkj1 = $tkj1->where('siswa.kelas','=','1')->count();
		$tkj2	= clone $pelanggaran_tkjq;
		$tkj2 = $tkj2->where('siswa.kelas','=','2')->count();
		$tkj3	= clone $pelanggaran_tkjq;
		$tkj3 = $tkj3->where('siswa.kelas','=','3')->count();
		//jurusan ap
		$pelanggaran_apq  = $ap->where('siswa.jurusan','=','3');
		$pelanggaran_ap  = $pelanggaran_apq->count();
		$ap1	= clone $pelanggaran_apq;
		$ap1 = $ap1->where('siswa.kelas','=','1')->count();
		$ap2	= clone $pelanggaran_apq;
		$ap2 = $ap2->where('siswa.kelas','=','2')->count();
		$ap3	= clone $pelanggaran_apq;
		$ap3 = $ap3->where('siswa.kelas','=','3')->count();
		//pelanggaran per jk
		$jkl = clone $pelanggaran_list;
		$jkp = clone $pelanggaran_list;
		$jkl = $jkl->where('siswa.jk','=','l')->count();
		$jkp = $jkp->where('siswa.jk','=','p')->count();
		$siswa = Siswa::where('poin','=',(DB::table('siswa')->max('poin')))->first();
		$siswa1 = Siswa::where('poin','=',(DB::table('siswa')->min('poin')))->first();
		return view('pages.dashboard', compact('jumlah_siswa','pelanggaran','penghargaan',
																					 'pelanggaran_rpl','pelanggaran_tkj','pelanggaran_ap',
																					 'rpl1','rpl2','rpl3','tkj1','tkj2','tkj3','ap1','ap2','ap3',
																					 'jkp','jkl','siswa','siswa1'));

	}
}
