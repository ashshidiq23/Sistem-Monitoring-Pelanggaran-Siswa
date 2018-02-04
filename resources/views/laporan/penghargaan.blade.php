<div class="row">
	<h2>Laporan Penghargaan</h2>
</div>
@if (!empty($penghargaan))
<div class="row">
	<table class="table table-bordered table-striped table-condensed">
		<thead>
			<tr>
				<th>No</th>
				<th width="20%">Nama</th>
				<th width="7%">Kelas</th>
				<th>Kode Penghargaan</th>
				<th>Tanggal</th>
				<th>Dilaporkan Oleh</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>

			@if(Auth::user()->level<3)
				@for ($i=0;$i<$penmax;$i++)
					<tr>
						<td>{{ $i+1 }}</td>
						<td>{{ ucwords($penghargaan[$i]->nama_siswa) }}</td>
						<td>
							@if ($penghargaan[$i]->kelas==1)
							{{'X - '}}
							@if ($penghargaan[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($penghargaan[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@elseif ($penghargaan[$i]->kelas==2)
							{{'XI - '}}
							@if ($penghargaan[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($penghargaan[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@elseif ($penghargaan[$i]->kelas==3)
							{{'XII - '}}
							@if ($penghargaan[$i]->jurusan==1)
							{{'RPL'}}
							@elseif($penghargaan[$i]->jurusan==2)
							{{'TKJ'}}
							@else{{'AP'}}
							@endif
							@endif
						</td>
						<td>{{ strtoupper($penghargaan[$i]->kode_penghargaan) }} {{ ucfirst($penghargaan[$i]->jenis_penghargaan) }}</td>
						<td>{{ $penghargaan[$i]->created_at->setTimeZone('Asia/Jakarta')->formatLocalized('%A, %d %B %Y %H:%M')}}</td>
						<td>
							@if($penghargaan[$i]->user==1)
							{{'Administrator'}}
							@elseif($penghargaan[$i]->user==2)
							{{'Kesiswaan'}}
							@else
							{{'Piket'}}
							@endif
						</td>
						<td>
							<div class="box-button inline-block">
								{!! Form::open(['method' => 'DELETE', 'action' => ['LapPenghargaanController@destroy', $penghargaan[$i]->no]]) !!}
								{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Penghargan'] )  }}
								{!! Form::close() !!}
							</div>
						</tr>
						@endfor
						@else
						@for ($i=0;$i<$penmax2;$i++)
							<tr>
								<td>{{ $i+1 }}</td>
								<td>{{ ucwords($penghargaan2[$i]->nama_siswa) }}</td>
								<td>
									@if ($penghargaan2[$i]->kelas==1)
									{{'X - '}}
									@if ($penghargaan2[$i]->jurusan==1)
									{{'RPL'}}
									@elseif($penghargaan2[$i]->jurusan==2)
									{{'TKJ'}}
									@else{{'AP'}}
									@endif
									@elseif ($penghargaan2[$i]->kelas==2)
									{{'XI - '}}
									@if ($penghargaan2[$i]->jurusan==1)
									{{'RPL'}}
									@elseif($penghargaan2[$i]->jurusan==2)
									{{'TKJ'}}
									@else{{'AP'}}
									@endif
									@elseif ($penghargaan2[$i]->kelas==3)
									{{'XII - '}}
									@if ($penghargaan2[$i]->jurusan==1)
									{{'RPL'}}
									@elseif($penghargaan2[$i]->jurusan==2)
									{{'TKJ'}}
									@else{{'AP'}}
									@endif
									@endif
								</td>
								<td>{{ strtoupper($penghargaan2[$i]->kode_penghargaan) }} {{ ucfirst($penghargaan2[$i]->jenis_penghargaan) }}</td>
								<td>{{ $penghargaan2[$i]->created_at->setTimeZone('Asia/Jakarta')->formatLocalized('%A, %d %B %Y %H:%M')}}</td>
								<td>
									@if($penghargaan2[$i]->user==1)
									{{'Administrator'}}
									@elseif($penghargaan2[$i]->user==2)
									{{'Kesiswaan'}}
									@else
									{{'Piket'}}
									@endif
								</td>
								<td>
									<div class="box-button inline-block">
										{!! Form::open(['method' => 'DELETE', 'action' => ['LapPenghargaanController@destroy', $penghargaan2[$i]->no_induk]]) !!}
										{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Penghargaan'] )  }}
										{!! Form::close() !!}
									</div></td>
								</tr>
								@endfor
								@endif
							</tbody>
						</table>
						@else
						<p>Tidak ada data laporan penghargaan</p>
						@endif
					</div>