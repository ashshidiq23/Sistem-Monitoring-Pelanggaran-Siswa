@extends('template')

@section('main')
	<div id='pelanggaran'>
            <h2>Tambah Pelanggaran</h2>
         {{--   @include('errors.form_error_list') --}}
            {{ Form::open(array('url' => 'pelanggaran')) }}
                @include('pelanggaran.form',['submitButtonText' =>'Tambah Pelanggaran'])
            {{ Form::close() }}
	</div>
@stop

@section('footer')
	
@stop
