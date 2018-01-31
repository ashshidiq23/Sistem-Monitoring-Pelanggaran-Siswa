<html>
	<head>
		<link href="http://localhost/learning/public/assets/css/bootstrap.css" rel="stylesheet">
		<title>Cetak Laporan</title>
	</head>
	<body>
		<style type="text/css">
			table{
				width: 100%;
			}
			table, th, td {
				/* border: 1px solid black; */

			}
			th, td {
				padding: 5px;
				text-align: left;
				vertical-align: middle;
				border-bottom: 0px solid #ddd;
				font-size: 12px;
			}
			th {
				;
				height: 20px;
				background-color: #fff;
				text-align : center;
			}
			.border1 {
				border: 1px solid black;
				width: 50%;
				margin: auto;
			}
		</style>
		<table>
			<tr>
				<td rowspan="3" width="20%"><img src="http://localhost/learning/public/assets/img/bpi.png" style="width:120px;height:154px;"></td>
				<th rowspan="3"><font size="14">CATATAN PELANGGARAN DAN PENGHARGAAN<br>TATA KRAMA DAN TATA TERTIB SISWA<br>SMK BPI</th>
			</tr>
		</table>
		<hr size="1">
		<br>
			<table border="0">
				<tbody>
					<tr>
						<td>No. Induk</td>
						<td>: {{ $siswa->no_induk }}</td>
					</tr>
					<tr>
						<td>Nama</td>
						<td>: {{ $siswa->nama_siswa }}</td>
					</tr>
					<tr>
						<td>Kelas</td>
						<td>
							@if ($siswa->kelas==1)
							: {{'X'}}-{{$siswa->jurusan}}
							@elseif ($siswa->kelas==2)
							: {{'XI'}}-{{$siswa->jurusan}}
							@elseif ($siswa->kelas==3)
							: {{'XII'}}-{{$siswa->jurusan}}
							@endif
						</td>
					</tr>
					<tr>
						<td>Jenis Kelamin</td>
						<td>@if($siswa->jk == 'L')
							: Laki-Laki
							@else
							: Perempuan
							@endif
						</td>
					</tr>
					<tr>
						<td>Tempat Tanggal Lahir</td>
						<td>: {{ $siswa->tempat_lahir }}, {{ $siswa->tgl_lahir->formatLocalized('%d %B %Y') }}</td>
					</tr>
				</tbody>
			</table>
			<br>
			<table class="table-bordered2">
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
						<td>{{$laporan->kode_pelanggaran}} {{ucfirst($laporan->jenis_pelanggaran)}}</td>
						<td>{{$laporan->poin_ubah}}</td>
						<td>{{$laporan->poin_sis}}</td>
					</tr>
					@endforeach
				</tbody>
			</table>
			<br>
			<table width ="50" class="border1">
				<tr>
					<td>Jumlah deposit poin pada akhir semester</td>
					<td>: {{$siswa->poin}}</td>
				</tr>
				<tr>
					<td>Indeks</td>
					<td>
						@if ($siswa->poin < 50)
						: D
						@elseif ($siswa->poin < 75)
						: C
						@elseif ($siswa->poin < 90)
						: B
						@else
						: A
						@endif
					</td>
				</tr>
			</table>
			<br>
			<div class="row">
				<div class="col-xs-12 col-xs-offset-75">
					<table border="0">
						<tr>
							<td>Bandung, {{$dt->formatLocalized('%d %B %Y')}}</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<table border="0" >
						<tr>
							<td align="center"></td>
							<td align="center">Kepala Sekolah,</td>
						</tr>
						<tr>
							<td align="center"></td>
							<td align="center"><br><br><br> _________________________ </td>
						</tr>
					</table>
				</div>
				<div class="col-xs-3">
					<table border="0" >
						<tr>
							<td align="center"></td>
							<td align="center">Wali Kelas,</td>
						</tr>

						<tr>
							<td align="center"></td>
							<td align="center"><br><br><br> _________________________ </td>
						</tr>
					</table>
				</div>
				<div class="col-xs-4">
					<table border="0" >
						<tr>
							<td align="center"></td>
							<td align="center">Guru Pembimbing,</td>
						</tr>
						<tr>
							<td align="center"></td>
							<td align="center"><br><br><br> _________________________ </td>
						</tr>
					</table>
				</div>
			</div>
		</body>
	</html>