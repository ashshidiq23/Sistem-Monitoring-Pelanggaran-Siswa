@extends('template')

@section('main')
	<div class="col-lg-5">
		@include('laporan.pelanggaran')
	</div>
	<div class="col-lg-6 col-lg-offset-1">
		@include('laporan.penghargaan')
	</div>
@stop
@section('footer')
	@include('footer')
@stop
