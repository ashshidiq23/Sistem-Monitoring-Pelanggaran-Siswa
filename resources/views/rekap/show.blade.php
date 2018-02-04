@extends('template')

@section('main')

<h2>Rekap Kelas
	@if ($siswa_list[0]->kelas==1)
						{{'X'}}-{{$siswa_list[0]->jurusan}}
						@elseif ($siswa_list[0]->kelas==2)
						{{'XI'}}-{{$siswa_list[0]->jurusan}}
						@elseif ($siswa_list[0]->kelas==3)
						{{'XII'}}-{{$siswa_list[0]->jurusan}}
						@endif</h2>
@if (!empty($siswa_list))
<div class="row">
	<div class="col-lg-5">
		<table class="table table-bordered table-striped table-condensed">
			<thead>
				<tr>
					<th>No. Induk</th>
					<th>Nama</th>
					<th>Poin</th>
					<th>Indeks</th>
				</tr>
			</thead>
			<tbody>
				@foreach($siswa_list as $siswa)
				<tr>
					<td>{{ $siswa->no_induk }}</td>
					<td>{{ $siswa->nama_siswa }}</td>
					<td>{{ $siswa->poin}}</td>
					<td>
						@if ($siswa->poin < 50)
						D
						@elseif ($siswa->poin < 75)
						C
						@elseif ($siswa->poin < 90)
						B
						@else
						A
						@endif
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
@else
<p>Tidak ada data siswa</p>
@endif



@stop

@section('footer')
@include('footer')
@stop
