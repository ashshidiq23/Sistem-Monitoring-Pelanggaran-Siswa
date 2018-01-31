<thead>
	<tr><th colspan=4>C. KEPEDULIAN</th></tr>
	<tr>
		<th>Kode</th>
		<th>Jenis Pelanggaran</th>
		<th>Poin</th>
		@if (Auth::user()->level==1)
		<th>Aksi</th>
		@endif
	</tr>
</thead>
<tbody>
	@foreach($pelanggaran_c as $pelanggaran)
	<tr>
		<td>{{ $pelanggaran->kode_pelanggaran }}</td>
		<td>{{ $pelanggaran->jenis_pelanggaran }}</td>
		<td>{{ $pelanggaran->poin}}</td>
		@if (Auth::user()->level==1)
		<td>
			<div class="box-button inline-block">
				<a href="{{ url('pelanggaran/' . $pelanggaran->kode_pelanggaran) }}" class="btn btn-success btn-xs" title="Detail Pelanggaran"><span><i class="fa fa-eye"></i></span></a>
				{{-- link_to('siswa/' . $siswa->id, 'Detail', ['class' => 'btn btn-success btn-xs']) --}}
			</div>
			<div class="box-button inline-block">
				<a href="{{ url('pelanggaran/' . $pelanggaran->kode_pelanggaran . '/edit') }}" class="btn btn-warning btn-xs" title="Ubah Data Pelanggaran"><span><i class="fa fa-pencil"></i></span></a>
				{{-- link_to('siswa/' . $siswa->id . '/edit', 'Edit', ['class' => 'btn btn-warning btn-xs']) --}}
			</div>
			<div class="box-button inline-block">
				{!! Form::open(['method' => 'DELETE', 'action' => ['PelanggaranController@destroy', $pelanggaran->kode_pelanggaran]]) !!}
				{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Pelanggaran'] )  }}
				{!! Form::close() !!}
			</div>
		</td>
		@endif
	</tr>
	@endforeach
</tbody>