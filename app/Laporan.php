<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    protected $table = 'laporan';
    protected $fillable =
    ['no_induk', 'kode_pelanggaran','kode_penghargaan'];
    protected $dates = ['created_at'];
    
    public function penghargaan()
    {
    	//return $this->hasMany('App\Penghargaan', 'laporan', 'no', 'kode_penghargaan')->withTimeStamps();	
    	return $this->hasMany(Penghargaan::class);
    }
}

