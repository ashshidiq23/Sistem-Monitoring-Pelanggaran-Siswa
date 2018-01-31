<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $table = 'siswa';
    
    protected $fillable =
    [
    	'no_induk',
    	'nama_siswa',
    	'jk',
    	'tempat_lahir',
    	'tgl_lahir',
    	'agama',
    	'alamat',
    	'kelas',
    	'jurusan',
    	'photo',
    	'poin'
    ];
    protected $primaryKey = 'no_induk';
    protected $dates =
    ['tgl_lahir'];
    public function getNamaSiswaAttribute($nama_siswa) 
    {
        return ucwords($nama_siswa);        
    }
    public function setNamaSiswaAttribute($nama_siswa) 
    {
        $this->attributes['nama_siswa'] = strtolower($nama_siswa);       
    }
   // public function pelanggaran()
    //{
    	//return $this->belongsToMany('App\Pelanggaran', 'pelanggaran_siswa', 'no_induk', 'kode_pelanggaran')->withPivot('poin')->withTimeStamps();	
   // }
}
