@extends('template')

@section('main')

		<div class="row">
			<div class="col-lg-6">
				<h2>Penghargaan</h2>
			</div>
			@if (Auth::user()->level==1)
			<div class="col-lg-4 col-lg-offset-2">
				<h2>
					<a href="penghargaan/create" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah penghargaan</a>
				</h2>
			</div>
			@endif
		</div>
		
		@if (!empty($penghargaan_list))
			<table class="table table-bordered table-striped table-condensed">
				@include('penghargaan.penghargaan1')
				@include('penghargaan.penghargaan2')
				@include('penghargaan.penghargaan3')
			</table>
		@else
			<p>Tidak ada data penghargaan</p>
		@endif
		
</div></div>
@stop

@section('footer')
	@include('footer')
@stop
