<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePelSis extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pel_sis', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('no',9);
            $table->string('kode',10);
            $table->timestamps();
            
            //set PK
            $table->primary(['no','kode']);
            
            //FK pelanggaran_siswa -> siswa
            $table->foreign('no')->references('no_induk')->on('siswa')->onDelete('cascade')->onUpdate('cascade');
            
            //FK siswa -> pelanggaran_siswa
            $table->foreign('kode')->references('kode_pelanggaran')->on('pelanggaran')->onDelete('cascade')->onUpdate('cascade');
            
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
        Schema::dropIfExists('pel_sis');
    }
}
