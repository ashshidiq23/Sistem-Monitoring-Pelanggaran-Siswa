@extends('template')

@section('main')
	<div id="siswa">
		<h2>Detail Siswa</h2>
		
		<table class="table table-stripped">
                        <tr>
                            <th colspan="2"><img src="{{ asset("foto/{$siswa->photo}") }}" class="img-circle" width="80"></th>
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
				<td>{{ $siswa->tempat_lahir }}, {{ $siswa->tgl_lahir->format('d-m-Y') }}</td>
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
                <table class="table table-bordered table-striped table-condensed">
                    <thead>
			<tr>
                            <th>Hari, Tanggal</th>
                            <th>Kode Pelanggaran/Penghargaan</th>
                            <th>Perubahan Poin</th>
                            <th>Deposit Poin</th>
                            <th>Dilaporkan oleh</th>
			</tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Awal Semester</td>
                            <td></td>
                            <td></td>
                            <td>100</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Senin, 13 Maret 2017</td>
                            <td>E.2.</td>
                            <td>-50</td>
                            <td>50</td>
                            <td>Jajang Nurzaman</td>
                        </tr>
                    </tbody>
                    <tr>
                            <td>Rabu, 22 Maret 2017</td>
                            <td>III.1.</td>
                            <td>+10</td>
                            <td>60</td>
                            <td>Kamal Kurniadi</td>
                        </tr>
                </table>
	</div>
@stop
	
@section('footer')
	@include('footer')
@stop
