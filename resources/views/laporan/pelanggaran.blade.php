<div class="row">
	<h2>Laporan Pelanggaran </h2>
</div>
<div class="row">
	@if (!empty($pelanggaran))
	<table class="table table-bordered table-striped table-condensed">
		<thead>
			<tr>
				<th>No</th>
				<th width="20%">Nama</th>
				<th width="7%">Kelas</th>
				<th>Kode Pelanggaran</th>
				<th>Tanggal</th>
				<th>Dilaporan Oleh</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>
			@if (Auth::user()->level<3)
				@for ($i=0;$i<$pelmax;$i++)
					{{--@foreach ($pelanggaran_list as $pelanggaran)--}}
					<tr>
						<td>{{ $i+1 }}</td>
						<td>{{ ucwords($pelanggaran[$i]->nama_siswa)}}</td>
						<td>
							@if ($pelanggaran[$i]->kelas==1)
							{{'X - '}}
							@if ($pelanggaran[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($pelanggaran[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@elseif ($pelanggaran[$i]->kelas==2)
							{{'XI - '}}
							@if ($pelanggaran[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($pelanggaran[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@elseif ($pelanggaran[$i]->kelas==3)
							{{'XII - '}}
							@if ($pelanggaran[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($pelanggaran[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@endif
						</td>
						<td>{{ strtoupper($pelanggaran[$i]->kode_pelanggaran) }} {{ ucfirst($pelanggaran[$i]->jenis_pelanggaran) }}</td>
						<td>{{ $pelanggaran[$i]->created_at->setTimeZone('Asia/Jakarta')->formatLocalized('%A, %d %B %Y %H:%M')}}</td>
						<td>
							@if($pelanggaran[$i]->user==1)
							{{'Administrator'}}
							@elseif($pelanggaran[$i]->user==2)
							{{'Kesiswaan'}}
							@else
							{{'Piket'}}
							@endif
						</td>
						<td>
							<div class="box-button inline-block">
								{!! Form::open(['method' => 'DELETE', 'action' => ['LapPelanggaranController@destroy', $pelanggaran[$i]->no]]) !!}
								{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Pelanggaran'] )  }}
								{!! Form::close() !!}
							</div>
						</td>
					</tr>
				@endfor
				@else
				@for ($i=0;$i<$pelmax2;$i++)
					<tr>
						<td>{{ $i+1 }}</td>
						<td>{{ ucwords($pelanggaran2[$i]->nama_siswa)}}</td>
						<td>
							@if ($pelanggaran2[$i]->kelas==1)
								{{'X - '}}
							@if ($pelanggaran2[$i]->jurusan==1)
								{{'RPL'}}
							@elseif($pelanggaran2[$i]->jurusan==2)
								{{'TKJ'}}
							@else
								{{'AP'}}
							@endif
							@elseif ($pelanggaran2[$i]->kelas==2)
								{{'XI - '}}
							@if ($pelanggaran2[$i]->jurusan==1)
								{{'RPL'}}
							@elseif($pelanggaran2[$i]->jurusan==2)
								{{'TKJ'}}
							@else
								{{'AP'}}
							@endif
							@elseif ($pelanggaran2[$i]->kelas==3)
								{{'XII - '}}
							@if ($pelanggaran2[$i]->jurusan==1)
								{{'RPL'}}
							@elseif($pelanggaran2[$i]->jurusan==2)
								{{'TKJ'}}
							@else
								{{'AP'}}
							@endif
							@endif
						</td>
						<td>{{ strtoupper($pelanggaran2[$i]->kode_pelanggaran) }} {{ ucfirst($pelanggaran2[$i]->jenis_pelanggaran) }}</td>
						<td>{{ $pelanggaran2[$i]->created_at->setTimeZone('Asia/Jakarta')->formatLocalized('%A, %d %B %Y %H:%M')}}</td>
						<td>
							@if($pelanggaran2[$i]->user==1)
								{{'Administrator'}}
							@elseif($pelanggaran2[$i]->user==2)
								{{'Kesiswaan'}}
							@else
								{{'Piket'}}
							@endif
						</td>
						<td>
							<div class="box-button inline-block">
								{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Pelanggaran'] )  }}
							</div>
						</td>
					</tr>
				@endfor
				@endif
			</tbody>
		</table>
	@else
		<p>Tidak ada data laporan pelanggaran</p>
	@endif
</div>