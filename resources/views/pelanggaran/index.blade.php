@extends('template')

@section('main')

		<div class="row">
			<div class="col-lg-6">
				<h2>Pelanggaran</h2>
			</div>
			@if (Auth::user()->level==1)
			<div class="col-lg-4 col-lg-offset-2">
				<h2>
					<a href="pelanggaran/create" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Pelanggaran</a>
				</h2>
			</div>
			@endif
		</div>

		@if (!empty($pelanggaran_list))
			<table class="table table-bordered table-striped table-condensed">
				@include('pelanggaran.pelanggaran_a')
				@include('pelanggaran.pelanggaran_b')
				@include('pelanggaran.pelanggaran_c')
				@include('pelanggaran.pelanggaran_d')
				@include('pelanggaran.pelanggaran_e')
			</table>
		@else
			<p>Tidak ada data pelanggaran</p>
		@endif
		

@stop

@section('footer')
	@include('footer')
@stop
