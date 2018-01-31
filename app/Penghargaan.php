<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penghargaan extends Model
{
    protected $table = 'penghargaan';
    protected $fillable =
    [
   		'kode_penghargaan',
   		'kategori',
   		'jenis_penghargaan',
   		'poin',										
    ];
    protected $primaryKey = 'kode_penghargaan';
    public $incrementing = false;
    //fungsi merapikan string
    public function getKodePenghargaanAttribute($kode_penghargaan) 
    {
        return strtoupper($kode_penghargaan);        
    }
    public function setKodePenghargaanAttribute($kode_penghargaan) 
    {
        $this->attributes['kode_penghargaan'] = strtolower($kode_penghargaan);       
    }
    public function getKategoriAttribute($kategori) 
    {
        return strtoupper($kategori);        
    }
    public function setKategoriAttribute($kategori) 
    {
        $this->attributes['kategori'] = strtolower($kategori);       
    }
    public function getJenisPenghargaanAttribute($jenis_penghargaan) 
    {
        return ucfirst($jenis_penghargaan);        
    }
    public function setJenisPenghargaanAttribute($jenis_penghargaan) 
    {
        $this->attributes['jenis_penghargaan'] = strtolower($jenis_penghargaan);       
    }
    //foreign
    public function siswa()
    {
    	return $this->belongsToMany('App\Siswa', 'penghargaan_siswa', 'kode_penghargaan', 'no_induk')->withPivot('poin_ubah','poin_siswa')->withTimeStamps();
    }
}
