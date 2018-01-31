<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Siswa;
class PelSisController extends Controller
{
    public function create($id)
	{
		$siswa = Siswa::findOrFail($id);
		return view('pelsis.create', compact('siswa'));
	}
}
