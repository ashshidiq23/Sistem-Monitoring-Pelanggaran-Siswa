@extends('template')

@section('main')
<div class="row">
	<div class="col-lg-6 col-lg-offset-2-5 main-chart">
			@include('pages.dashboard.statistik')
			<div class="row mt">
				@include('pages.dashboard.chartjurusan')
				@include('pages.dashboard.chartkelas')
				@include('pages.dashboard.chartangkatan')
			</div><!-- /row -->
			<div class="row">
				@include('pages.dashboard.top-pelanggar')
				@include('pages.dashboard.top-siswa')
			</div><!-- /row -->
	</div><!-- /col-lg-9 END SECTION MIDDLE -->
  {{--<div class="col-lg-3 ds">
		<h3>Pemberitahuan</h3>
		@include('pages.dashboard.pemberitahuan')
		<h3>Staff Kesiswaan</h3>
		@include('pages.dashboard.staff') --}}
  </div><!-- /col-lg-3 -->
</div><! --/row -->
@stop