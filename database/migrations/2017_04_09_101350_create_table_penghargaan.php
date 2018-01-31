<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePenghargaan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penghargaan', function (Blueprint $table) {
            //$table->increments('id');
            $table->string('kode_penghargaan', 10);
            $table->char('kategori', 3);
            $table->string('jenis_penghargaan');
            $table->integer('poin');
            $table->timestamps();
            $table->primary('kode_penghargaan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penghargaan');
    }
}
