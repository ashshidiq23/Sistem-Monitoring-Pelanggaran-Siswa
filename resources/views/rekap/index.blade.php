@extends('template')

@section('main')
	<h2>Rekap Laporan</h2>
	<div class="row">
		<div class="col-lg-3">
			<table class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th width=10%>No.</th>
						<th>Kelas</th>
						<th width=15%>Aksi</th>
					</tr>
				</thead>
				<tbody>
				@foreach($angkatan as $a)
					<tr>
						<td>{{$a->no}}</td>
						<td>
						@if ($a->kelas==1)
							{{'X'}}-{{$a->jurusan}}
						@elseif ($a->kelas==2)
							{{'XI'}}-{{$a->jurusan}}
						@elseif ($a->kelas==3)
							{{'XII'}}-{{$a->jurusan}}
						@endif
						</td>
						<td>
							<div class="box-button inline-block">
								<a href="{{ url('rekap/lihat/' . $a->kelas.'/'.$a->jurusan) }}" class="btn btn-success btn-xs" title="Lihat Rekap Kelas"><span><i class="fa fa-eye"></i></span></a>
								<a href="{{ url('rekap/cetak/' . $a->kelas.'/'.$a->jurusan) }}" class="btn btn-success btn-xs" title="Cetak Laporan"><span><i class="fa fa-print"></i></span></a><br><br>
							</div>
						</td>
					</tr>
				@endforeach
				</tbody>
			</table>
		</div>
	</div>
@stop
@section('footer')
	@include('footer')
@stop
