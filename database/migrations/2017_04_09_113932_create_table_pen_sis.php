<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePenSis extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pen_sis', function (Blueprint $table) {
            //$table->increments('id');
            //$table->increments('id');
            $table->string('no',9);
            $table->string('kode',10);
            $table->timestamps();
            
            //set PK
            $table->primary(['no','kode']);
            
            //FK penghargaan_siswa -> siswa
            $table->foreign('no')->references('no_induk')->on('siswa')->onDelete('cascade')->onUpdate('cascade');
            
            //FK siswa -> penghargaan_siswa
            $table->foreign('kode')->references('kode_penghargaan')->on('penghargaan')->onDelete('cascade')->onUpdate('cascade');
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pen_sis');
    }
}
