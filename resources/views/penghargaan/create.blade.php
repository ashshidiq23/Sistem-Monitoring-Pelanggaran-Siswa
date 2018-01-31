@extends('template')

@section('main')
	<div id='penghargaan'>
            <h2>Tambah Penghargaan</h2>
         {{--   @include('errors.form_error_list') --}}
            {{ Form::open(array('url' => 'penghargaan')) }}
                @include('penghargaan.form',['submitButtonText' =>'Tambah Penghargaan'])
            {{ Form::close() }}
	</div>
@stop

@section('footer')
	
@stop
