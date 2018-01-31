<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePelanggaran extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelanggaran', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('kode_pelanggaran', 10);
            $table->char('kategori', 1);
            $table->string('jenis_pelanggaran');
            $table->integer('poin');
            $table->timestamps();            
            $table->primary('kode_pelanggaran');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pelanggaran');
    }
}
