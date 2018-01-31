@extends('template')

@section('main')
	<div id='siswa'>
            <h2>Tambah Siswa</h2>
         <!--   @include('errors.form_error_list') -->
            {{ Form::open(array('url' => 'siswa', 'files' => true, 'method' => 'post')) }}
                @include('siswa.form',['submitButtonText' =>'Tambah Siswa'])
            {{ Form::close() }}
	</div>
@stop

@section('footer')
	
@stop
