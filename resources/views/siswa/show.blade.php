@extends('template')

@section('main')
<div id="siswa">
	<h2>Detail Siswa</h2>

	<table class="table table-stripped">
		<tr>
				@if($siswa->photo==null&&$siswa->jk == 'L')
					<th colspan="2"><img src="{{ asset("foto/default_l.png") }}" class="img-circle" width="80"></th>
				@elseif($siswa->photo==null&&$siswa->jk == 'P')
					<th colspan="2"><img src="{{ asset("foto/default_p.png") }}" class="img-circle" width="80"></th>
				@else				
					<th colspan="2"><img src="{{ asset("foto/{$siswa->photo}") }}" class="img-circle" width="80"></th>
				@endif
				
		</tr>
		<tr>
			<th>No. Induk</th>
			<td>{{ $siswa->no_induk }}</td>
		</tr>
		<tr>
			<th>Nama</th>
			<td>{{ $siswa->nama_siswa }}</td>
		</tr>
		<tr>
			<th>Kelas</th>
			<td>
				@if ($siswa->kelas==1)
				{{'X'}}-{{$siswa->jurusan}}
				@elseif ($siswa->kelas==2)
				{{'XI'}}-{{$siswa->jurusan}}
				@elseif ($siswa->kelas==3)
				{{'XII'}}-{{$siswa->jurusan}}
				@endif
			</td>
		</tr>
		<tr>
			<th>Jenis Kelamin</th>
			<td>@if($siswa->jk == 'L')
				Laki-Laki
				@else
				Perempuan
				@endif
			</td>
		</tr>
		<tr>
			<th>Tempat Tanggal Lahir</th>
			<td>{{ $siswa->tempat_lahir }}, {{ $siswa->tgl_lahir->format('d-M-Y') }}</td>
		</tr>
		<tr>
			<th>Umur</th>
			<td>{{ $siswa->tgl_lahir->age }}</td>
		</tr>
		<tr>
			<th>Agama</th>
			<td>{{ $siswa->agama }}</td>
		</tr>
		<tr>
			<th>Alamat</th>
			<td>{{ $siswa->alamat }}</td>
		</tr>
	</table>
	@if (Auth::user()->level >1)
	<a href="{{ url('siswa/' . $siswa->no_induk .'/cetak') }}" class="btn btn-success btn-sm" title="Cetak Laporan"><span>Cetak Laporan <i class="fa fa-print"></i></span></a><br><br>
	<table class="table table-bordered table-striped table-condensed">
		<thead>
			<tr>
				<th>Hari, Tanggal</th>
				<th>Kode Pelanggaran/Penghargaan</th>
				<th>Perubahan Poin (+/-)</th>
				<th>Deposit Poin</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Awal Semester</td>
				<td></td>
				<td></td>
				<td>100</td>
			</tr>
			@foreach($laporan_list as $laporan)
			<tr>
				<td>{{$laporan->created_at}}</td>
				<td>{{$laporan->kode_pelanggaran}} {{$laporan->jenis_pelanggaran}}</td>
				<td>{{$laporan->poin_ubah}}</td>
				<td>{{$laporan->poin_sis}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	@endif
</div>
@stop

@section('footer')
@include('footer')
@stop
