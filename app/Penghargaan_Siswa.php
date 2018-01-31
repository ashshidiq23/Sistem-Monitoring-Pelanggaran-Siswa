<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penghargaan_Siswa extends Model
{
    protected $table = 'penghargaan_siswa';
    /*protected $fillable =
    [
   		'kode_pelanggaran',
   		'no_induk',										
    ];*/
    protected $dates =
    ['created_at'];
    protected $primaryKey = ['kode_penghargaan','no_induk'];
    public $incrementing = false;
}
