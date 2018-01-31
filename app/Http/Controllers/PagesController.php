<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Pelanggaran_Siswa;
use App\Penghargaan_Siswa;

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
		$penghargaan =penghargaan_siswa::count();
		return view('pages.dashboard', compact('jumlah_siswa','pelanggaran','penghargaan'));
	}
}
