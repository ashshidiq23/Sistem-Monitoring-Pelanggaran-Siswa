@extends('template')

@section('main')
<div id="siswa">
	<h2>Tambah Pelanggaran Siswa</h2>
	{!! Form::model($siswa, ['method' => 'POST', 'action' => ['LapPelanggaranController@store', $siswa->no_induk]]) !!}

	@if (isset($siswa))
	{!! Form::hidden('no_induk', $siswa->no_induk) !!}
	@endif

	{{--no_induk--}}
	<div class="form-group">
		{!! Form::label('no_induk', 'No. Induk', ['class' => 'control-label']) !!}
		{!! Form::text('no_induk', null, ['class' => 'form-control', 'disabled']) !!}
	</div>

	{{--nama_siswa--}}
	<div class="form-group">
		{!! Form::label('nama_siswa', 'Nama', ['class' => 'control-label']) !!}
		{!! Form::text('nama_siswa', null, ['class' => 'form-control', 'disabled']) !!}
	</div>

	{{--kelas--}}
	<div class="form-group">
		{!! Form::label('kode_pelanggaran', 'Jenis Pelanggaran', ['class' => 'control-label']) !!}<br>
		<select class="form-control" name="kode_pelanggaran">
			<option value="">Pilih Pelanggaran...</option>
    @foreach($list_pelanggaran as $pelanggaran)
    <div class="row">
    <div class="col-md-6">
      <option value="{{$pelanggaran->kode_pelanggaran}}">{{$pelanggaran->kode_pelanggaran}} {{$pelanggaran->jenis_pelanggaran}}</option>
    </div>
    <div class="col-md-6">  
    {!! Form::label('poin', 'Pengurangan Poin', ['class' => 'control-label']) !!}
		{!! Form::text('poin', $pelanggaran->poin, ['class' => 'form-control', 'disabled']) !!}	
    </div>
    </div>
    @endforeach
  </select>
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
