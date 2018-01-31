<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggaran_Siswa extends Model
{
    protected $table = 'pelanggaran_siswa';
    /*protected $fillable =
    [
   		'kode_pelanggaran',
   		'no_induk',										
    ];*/
    protected $dates =
    ['created_at'];
    protected $primaryKey = ['kode_pelanggaran','no_induk'];
    public $incrementing = false;
}
