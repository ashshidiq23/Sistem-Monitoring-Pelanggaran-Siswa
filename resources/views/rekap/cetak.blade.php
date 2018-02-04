<html>
	<head>
		<link href="http://localhost/learning/public/assets/css/bootstrap.css" rel="stylesheet">
		<title>Cetak Laporan</title>
	</head>
	<body style="page-break-inside: auto;">
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
			@page { margin: 20px 55px 70px; }
    	#header { position: static; top: -60px; left: 0px; right: 0px; height: 200px; }
    	#footer { position: fixed; bottom: 60px; left: 0px; right: 0px;  height: 50px; }
   	 	body {
  			font-family: "Times New Roman", Times, serif;
  			font-weight: normal;
  			font-style: normal;
  			font-variant: normal; 
			}
		</style>
		<table id=header>
			<tr>
				<td rowspan="3" width="20%"><img src={{ asset("assets/img/bpi.png") }} style="width:120px;height:154px;"></td>
				<th rowspan="3"><font size="14">REKAP CATATAN PELANGGARAN DAN PENGHARGAAN<br>TATA KRAMA DAN TATA TERTIB SISWA<br>SMK BPI</th>
			</tr>
		</table>
		<hr size="1">
		<br>
		<table border="0" style="font-weight: bold;font-size: 16px;">
				<tbody>
					<tr>
						<td width=15%>Kelas</td>
						<td>
							@if ($siswa[$i]->kelas==1)
							: {{'X'}}-{{$siswa[$i]->jurusan}}
							@elseif ($siswa[$i]->kelas==2)
							: {{'XI'}}-{{$siswa[$i]->jurusan}}
							@elseif ($siswa[$i]->kelas==3)
						  : {{'XII'}}-{{$siswa[$i]->jurusan}}
							@endif
						</td>
					</tr>
					<tr>
						<td width=15%>Semester</td>
						<td>
						  : {{$smt}}
						</td>
					</tr>
					<tr>
						<td width=15%><b>Tahun Ajaran</td>
						<td>
						  @if ($smt=='Genap')
						  : {{$dt->year-1}}/ {{$dt->year}}
						  @else
						  : {{$dt->year}}/ {{$dt->year+1}}
						  @endif
						</td>
					</tr>
				</tbody>
			</table>
			<br><font size="12">
		<table class="table-bordered2">
			<thead>
				<tr>
					<th>No. Induk</th>
					<th>Nama</th>
					<th>Poin</th>
					<th>Indeks</th>
				</tr>
			</thead>
			<tbody style="page-break-after: always;">
				@for ($i=0;$i<20;$i++)
					<tr>
						<td>{{$siswa[$i]->no_induk}}</td>
						<td>{{$siswa[$i]->nama_siswa}}</td>
						<td>{{$siswa[$i]->poin}}</td>
						<td>
						@if ($siswa[$i]->poin < 50)
						D
						@elseif ($siswa[$i]->poin < 75)
						C
						@elseif ($siswa[$i]->poin < 90)
						B
						@else
						A
						@endif
						</td>
					</tr>
				@endfor
			</tbody>
		</table>
		<table class="table-bordered2">
			<thead>
				<tr>
					<th>No. Induk</th>
					<th>Nama</th>
					<th>Poin</th>
					<th>Indeks</th>
				</tr>
			</thead>
			<tbody>
				@for ($i=20;$i<$jumlah;$i++)
					<tr>
						<td>{{$siswa[$i]->no_induk}}</td>
						<td>{{$siswa[$i]->nama_siswa}}</td>
						<td>{{$siswa[$i]->poin}}</td>
						<td>
						@if ($siswa[$i]->poin < 50)
						D
						@elseif ($siswa[$i]->poin < 75)
						C
						@elseif ($siswa[$i]->poin < 90)
						B
						@else
						A
						@endif
						</td>
					</tr>
				@endfor
			</tbody>
		</table>
		<br>
			<div id="footer" style="page-break-inside: avoid;">
			<div class="row">
				<div class="col-xs-12 col-xs-offset-75">
					<table border="0">
						<tr>
							<td>Bandung, {{$dt->setTimeZone('Asia/Jakarta')->formatLocalized('%d %B %Y')}}</td>
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
			</div>
		</body>
	</html>