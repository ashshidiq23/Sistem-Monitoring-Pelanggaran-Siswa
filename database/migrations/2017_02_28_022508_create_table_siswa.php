<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableSiswa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     
    public function up()
    {
    	
        Schema::create('siswa', function (Blueprint $table) {
        	$value=100;
            //$table->increments('id');
            $table->string('no_induk', 9);
            $table->string('nama_siswa', 35);
            $table->enum('jk', ['L','P']);
            $table->string('tempat_lahir', 20);
            $table->date('tgl_lahir');
            $table->string('agama', 20);
            $table->string('alamat');
            $table->string('photo');
            $table->integer('kelas');
            $table->integer('jurusan');
            $table->integer('poin')->default($value);
            $table->timestamps();
            $table->primary('no_induk');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('siswa');
    }
}
