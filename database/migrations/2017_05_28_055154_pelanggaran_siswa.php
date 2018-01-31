<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PelanggaranSiswa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelanggaran_siswa', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('no_induk',9);
            $table->string('kode_pelanggaran',10);
            $table->timestamps();
            
            //set PK
            $table->primary(['no_induk','kode_pelanggaran']);
            
            //FK pelanggaran_siswa -> siswa
            $table->foreign('no_induk')->references('no_induk')->on('siswa')->onDelete('cascade')->onUpdate('cascade');
            
            //FK siswa -> pelanggaran_siswa
            $table->foreign('kode_pelanggaran')->references('kode_pelanggaran')->on('pelanggaran')->onDelete('cascade')->onUpdate('cascade');
            
        });
        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pelanggaran_siswa');
    }
}
