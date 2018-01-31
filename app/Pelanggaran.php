<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggaran extends Model
{
    protected $table = 'pelanggaran';
    protected $fillable =
    [
   		'kode_pelanggaran',
   		'kategori',
   		'jenis_pelanggaran',
   		'poin',										
    ];
    protected $primaryKey = 'kode_pelanggaran';
    public $incrementing = false;
    //fungsi merapikan string
    public function getKodePelanggaranAttribute($kode_pelanggaran) 
    {
        return strtoupper($kode_pelanggaran);        
    }
    public function setKodePelanggaranAttribute($kode_pelanggaran) 
    {
        $this->attributes['kode_pelanggaran'] = strtolower($kode_pelanggaran);       
    }
    public function getKategoriAttribute($kategori) 
    {
        return strtoupper($kategori);        
    }
    public function setKategoriAttribute($kategori) 
    {
        $this->attributes['kategori'] = strtolower($kategori);       
    }
    public function getJenisPelanggaranAttribute($jenis_pelanggaran) 
    {
        return ucfirst($jenis_pelanggaran);        
    }
    public function setJenisPelanggaranAttribute($jenis_pelanggaran) 
    {
        $this->attributes['jenis_pelanggaran'] = strtolower($jenis_pelanggaran);       
    }
    //foreign
    public function siswa()
    {
    	return $this->belongsToMany('App\Siswa', 'pelanggaran_siswa', 'kode_pelanggaran', 'no_induk')->withPivot('poin_ubah','poin_sis')->withTimeStamps();
    }
}
