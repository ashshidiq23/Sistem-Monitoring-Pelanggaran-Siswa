@extends('template')

@section('main')
<div id="laporan">
	<h2>Tambah Laporan Siswa</h2>
	{!! Form::model($siswa, ['method' => 'POST', 'action' => ['LapPelanggaranController@store', $siswa->no_induk]]) !!}

	@if (isset($siswa))
	{!! Form::hidden('no_induk', $siswa->no_induk) !!}
	@endif

	{{--no_induk--}}
	<div class="form-group">
		{!! Form::label('no_induk', 'No. Induk', ['class' => 'control-label']) !!}
		{!! Form::text('no_induk', $siswa->no_induk, ['class' => 'form-control', 'disabled']) !!}
	</div>

	{{--nama_siswa--}}
	<div class="form-group">
		{!! Form::label('nama_siswa', 'Nama', ['class' => 'control-label']) !!}
		{!! Form::text('nama_siswa', $siswa->nama, ['class' => 'form-control', 'disabled']) !!}
	</div>

	{{--kelas--}}
	<div class="form-group">
		{!! Form::label('kode_pelanggaran', 'Jenis Pelanggaran', ['class' => 'control-label']) !!}<br>
		<select class="form-control" name="kode_pelanggaran">
			<option value="">Pilih Pelanggaran...</option>
    @foreach($list_pelanggaran as $pelanggaran)
      <option value="{{$pelanggaran->kode_pelanggaran}}">{{$pelanggaran->kode_pelanggaran}} {{$pelanggaran->jenis_pelanggaran}} ({{$pelanggaran->poin}})</option>
    @endforeach
  </select>
	</div>
	{{--<div class="form-group">
		{!! Form::label('kode_penghargaan', 'Jenis Penghargaan', ['class' => 'control-label']) !!}<br>
		<select class="form-control" name="kode_penghargaan">
			<option value="">Pilih Penghargaan...</option>
    @foreach($list_penghargaan as $penghargaan)
      <option value="{{$penghargaan->kode_penghargaan}}">{{$penghargaan->kode_penghargaan}} {{$penghargaan->jenis_penghargaan}} ({{$penghargaan->poin}})</option>
    @endforeach
  </select>
	</div>--}}
</div>
<div class="form-group">
	{!! Form::submit("Tambah Pelanggaran", ['class' => 'btn btn-primary form-control']) !!}
</div>
{!! Form::close() !!}
</div>
@stop

@section('footer')
@include('footer')
@stop
