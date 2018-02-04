<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Penghargaan;
use App\Penghargaan_siswa;
use Auth;

class LapPenghargaanController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function create($id)
	{
		$siswa = Siswa::findOrFail($id);
		$list_penghargaan = Penghargaan::all();
		return view('laporan.create_pen', compact('siswa', 'list_penghargaan'));
	}
	public function store(Request $request)
	{
		$list_penghargaan = Penghargaan::all();
		$input = $request->all();
		$penghargaan=$request->input('kode_penghargaan');
		$no=$request->input('no_induk');
		$user=Auth::user()->level;
		$siswa = Siswa::find($no);
		$pen= Penghargaan::find($penghargaan);
		$poin_siswa= $siswa->poin+$pen->poin;
		$pen->siswa()->attach($siswa, ['poin_ubah'=>$pen->poin,'poin_sis'=>$poin_siswa,'user'=>$user]);
		//pengurangan poin
		$siswa->update(['poin'=>$poin_siswa]);
		return redirect('siswa');
	}
	public function destroy($id) {
		$penghargaan = Penghargaan_Siswa::where('no', $id);
		$penghargaan2 = Penghargaan_Siswa::where('no', $id)->first();
		$siswa = Siswa::where('no_induk', $penghargaan2->no_induk)->first();
		$poin_siswa = $siswa->poin-$penghargaan2->poin_ubah;
		$siswa->update(['poin'=>$poin_siswa]);
		$penghargaan->delete();
		return redirect('laporan');;
	}

}
