<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Siswa;
use App\Pelanggaran;
use App\Pelanggaran_Siswa;
use App\Penghargaan_Siswa;
use DB;
use PDF;
use Carbon\Carbon;

class SiswaController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}
	public function index()
	{
		//$halaman='siswa';
		$siswa_list= Siswa::orderBy('no_induk', 'asc')->Paginate(30);
		$jumlah_siswa = Siswa::count();
		return view('siswa.index', compact('halaman', 'siswa_list', 'jumlah_siswa'));
	}

	public function create()
	{
		return view('siswa.create', compact('halaman'));
	}

	public function store(Request $request)
	{
		$input = $request->all();
		$this->validate($request, [
		'no_induk' => 'required|string|size:9|unique:siswa,no_induk',
		'nama_siswa' => 'required|string|max:35',
		'jk' => 'required|in:L,P',
		'tempat_lahir' => 'required|string|max:35',
		'tgl_lahir' => 'required|date',
		'agama' => 'required|string|max:35',
		'photo' => 'sometimes|image|max:2048|mimes:jpeg,jpg,png,bmp',
		]);
		//upload foto
		$photo = $request->file('photo');
		if (!empty($photo)){
			$photo = $request->file('photo')->getClientOriginalName();
			$destination = base_path() . '/public/foto';
		$request->file('photo')->move($destination, $photo);}
		$input['photo'] = $photo;
		$siswa=Siswa::create($input);
		//Siswa::create($request->all());
		return redirect('siswa');
	}

	public function show($id)
	{
		//$halaman = 'siswa';
		$siswa = Siswa::findOrFail($id);
		//$pelanggaran_list= Pelanggaran_Siswa::where('no_induk', $siswa->no_induk);
		//$penghargaan_list= Penghargaan_Siswa::where('no_induk', $siswa->no_induk);
		//$laporan_list=$pelanggaran_list->union($penghargaan_list)->orderBy('created_at')->get();
		$pelanggaran_list= DB::table('pelanggaran_siswa')
											->select('pelanggaran_siswa.kode_pelanggaran','pelanggaran_siswa.created_at','pelanggaran_siswa.poin_ubah','pelanggaran_siswa.poin_sis','pelanggaran.jenis_pelanggaran')
											->join('pelanggaran','pelanggaran_siswa.kode_pelanggaran','=','pelanggaran.kode_pelanggaran')
											->where('no_induk', $siswa->no_induk);
		$penghargaan_list= DB::table('penghargaan_siswa')
											->select('penghargaan_siswa.kode_penghargaan','penghargaan_siswa.created_at','penghargaan_siswa.poin_ubah','penghargaan_siswa.poin_sis','penghargaan.jenis_penghargaan')
											->join('penghargaan','penghargaan_siswa.kode_penghargaan','=','penghargaan.kode_penghargaan')
											->where('no_induk', $siswa->no_induk);		
		$laporan_list=$pelanggaran_list
									->union($penghargaan_list)
									->orderBy('created_at')->get();
		//$poin=$siswa->pivot->Siswa::all();
		return view('siswa.show', compact('halaman', 'siswa', 'laporan_list'));
	}
	public function edit($id)
	{
		$siswa = Siswa::findOrFail($id);
		return view('siswa.edit', compact('siswa'));
	}

	public function update($id, Request $request)
	{
		$siswa = Siswa::findorfail($id);
		$input = $request->all();
		$this->validate($request, [
		'nama_siswa' => 'required|string|max:35',
		'jk' => 'required|in:L,P',
		'tempat_lahir' => 'required|string|max:35',
		'tgl_lahir' => 'required|date',
		'agama' => 'required|string|max:35',
		'photo' => 'nullable|image|max:2048|mimes:jpeg,jpg,png,bmp',
		]);
		if (!empty($photo)){
			$photo = $request->file('photo')->getClientOriginalName();
			$destination = base_path() . '/public/foto';
			$request->file('photo')->move($destination, $photo);
			$input['photo'] = $photo;
			$siswa->update($request->all());
			}
		//$updateNow = $siswa->update($input);
		
		$siswa->update($request->except('photo'));
		return redirect('siswa');
	}
	
	public function resetPoin() {
		Siswa::all()->update(array(['poin'=>100]));
	}
	
	public function destroy($id) {
		$siswa = Siswa::findOrFail($id);
		$siswa->delete();
		return redirect('siswa');
	}
	public function cetak ($id){
		$siswa = Siswa::findOrFail($id);
		$pelanggaran_list= DB::table('pelanggaran_siswa')
											->select('pelanggaran_siswa.kode_pelanggaran','pelanggaran_siswa.created_at','pelanggaran_siswa.poin_ubah','pelanggaran_siswa.poin_sis','pelanggaran.jenis_pelanggaran')
											->join('pelanggaran','pelanggaran_siswa.kode_pelanggaran','=','pelanggaran.kode_pelanggaran')
											->where('no_induk', $siswa->no_induk);
		$penghargaan_list= DB::table('penghargaan_siswa')
											->select('penghargaan_siswa.kode_penghargaan','penghargaan_siswa.created_at','penghargaan_siswa.poin_ubah','penghargaan_siswa.poin_sis','penghargaan.jenis_penghargaan')
											->join('penghargaan','penghargaan_siswa.kode_penghargaan','=','penghargaan.kode_penghargaan')
											->where('no_induk', $siswa->no_induk);		
		$laporan_list=$pelanggaran_list
									->union($penghargaan_list)
									->orderBy('created_at')->get();
		$dt=Carbon::now();
		$pdf = PDF::loadview('siswa.cetak', compact('halaman', 'siswa', 'laporan_list','dt'))
				->setOptions(['defaultFont' => 'sans-serif','isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]);
		return $pdf->stream('Laporan '.$siswa->no_induk .'.pdf');
	}
	public function cari(Request $request)
	{
		$keyword = trim($request->input('keyword'));
		//if (!empty($keyword)) {
		$kelas = $request->input('kelas');
		$jurusan = $request->input('jurusan');
		//query
		$query = Siswa::where('nama_siswa', 'LIKE', '%' . $keyword . '%');
		(!empty($kelas)) ? $query ->where('kelas', $kelas) : '';
		(!empty($jurusan)) ? $query ->where('jurusan', $jurusan) : '';
		$siswa_list = $query->paginate(50);

		$pagination = (!empty($kelas)) ? $siswa_list->appends(['kelas',$kelas]) : '';
		$pagination = (!empty($jurusan)) ? $siswa_list->appends(['jurusan',$jurusan]) : '';
		$pagination = $siswa_list->appends(['keyword',$keyword]);
		$jumlah_siswa = $siswa_list->total();
		return view('siswa.index', compact('siswa_list', 'keyword', 'pagination', 'jumlah_siswa', 'kelas', 'jurusan'));
		//}
		//return redirect('siswa');
	}
}
