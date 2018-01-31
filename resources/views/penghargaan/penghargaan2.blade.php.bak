<thead>
	<tr><th colspan=4>II. PRESTASI AKADEMIS</th></tr>
	<tr>
		<th>Kode</th>
		<th>Jenis penghargaan</th>
		<th>Poin</th>
		@if (Auth::user()->level==1)
		<th width=7%>Aksi</th>
		@endif
	</tr>
</thead>
<tbody>
	@foreach($penghargaan2 as $penghargaan)
	<tr>
		<td>{{ $penghargaan->kode_penghargaan }}</td>
		<td>{{ $penghargaan->jenis_penghargaan }}</td>
		<td>{{ $penghargaan->poin}}</td>
		@if (Auth::user()->level==1)
		<td>
			<div class="box-button inline-block">
				<a href="{{ url('penghargaan/' . $penghargaan->kode_penghargaan) }}" class="btn btn-success btn-xs" title="Detail penghargaan"><span><i class="fa fa-eye"></i></span></a>
				{{-- link_to('siswa/' . $siswa->id, 'Detail', ['class' => 'btn btn-success btn-xs']) --}}
			</div>
			<div class="box-button inline-block">
				<a href="{{ url('penghargaan/' . $penghargaan->kode_penghargaan . '/edit') }}" class="btn btn-warning btn-xs" title="Ubah Data penghargaan"><span><i class="fa fa-pencil"></i></span></a>
				{{-- link_to('siswa/' . $siswa->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-xs']) --}}
			</div>
			<div class="box-button inline-block">
				{!! Form::open(['method' => 'DELETE', 'action' => ['PenghargaanController@destroy', $penghargaan->kode_penghargaan]]) !!}
				{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus penghargaan'] )  }}
				{!! Form::close() !!}
			</div>
		</td>
		@endif
	</tr>
	@endforeach
</tbody>