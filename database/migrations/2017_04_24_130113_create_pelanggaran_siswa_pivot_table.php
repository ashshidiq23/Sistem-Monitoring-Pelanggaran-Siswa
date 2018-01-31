<?php


use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePelanggaranSiswaPivotTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pelanggaran_siswa', function (Blueprint $table) {
            $table->integer('kode_pelanggaran')->unsigned()->index();
            $table->foreign('kode_pelanggaran')->references('kode_pelanggaran')->on('pelanggaran')->onDelete('cascade');
            $table->integer('no_induk')->unsigned()->index();
            $table->foreign('no_induk')->references('no_induk')->on('siswa')->onDelete('cascade');
            $table->timestamps();
            $table->primary(['kode_pelanggaran', 'no_induk']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('pelanggaran_siswa');
    }
}
