<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function __construct()
	{
		$this->middleware('auth');
	}
	public function index()
	{
		$user_list=User::all();
		return view('pengguna.index', compact('user_list'));
	}

	public function create()
	{
		return view('register', compact('halaman'));
	}
	public function destroy($id) {
		$pelanggaran = User::findOrFail($id);
		$pelanggaran->delete();
		return redirect('pengguna');
	}
	public function tesu()
	{
		$user_list=User::all();
		return $user_list;
	}
}
