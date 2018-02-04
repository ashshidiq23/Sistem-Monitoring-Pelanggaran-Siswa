<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
use App\Pelanggaran;
use App\Pelanggaran_Siswa;
use Auth;

class LapPelanggaranController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function create($id)
	{
		$siswa = Siswa::findOrFail($id);
		$list_pelanggaran = Pelanggaran::all();
		return view('laporan.create_pel', compact('siswa', 'list_pelanggaran'));
	}
  public function store(Request $request)
	{
		$list_pelanggaran = Pelanggaran::all();
		$input = $request->all();
		$pelanggaran=$request->input('kode_pelanggaran');
		$no=$request->input('no_induk');
		$user=Auth::user()->level;
		$siswa = Siswa::find($no);
		$pel= Pelanggaran::find($pelanggaran);
		$poin_siswa= $siswa->poin-$pel->poin;
		if ($poin_siswa<0) {
			$poin_siswa=0;
		}
		$pel->siswa()->attach($siswa, ['poin_ubah'=>$pel->poin,'poin_sis'=>$poin_siswa,'user'=>$user]);
		//$siswa->pelanggaran()->attach($pelanggaran);
		//pengurangan poin
		$siswa->update(['poin'=>$poin_siswa]);
		return redirect('siswa');
	}
	public function destroy($id)
	{
		$pelanggaran = Pelanggaran_Siswa::where('no', $id);
		$pelanggaran2 = Pelanggaran_Siswa::where('no', $id)->first();
		$siswa = Siswa::where('no_induk', $pelanggaran2->no_induk)->first();
		$poin_siswa = $siswa->poin+$pelanggaran2->poin_ubah;
		$siswa->update(['poin'=>$poin_siswa]);
		$pelanggaran->delete();
		return redirect('laporan');
	}
}
