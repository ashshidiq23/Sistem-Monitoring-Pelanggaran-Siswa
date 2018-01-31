@extends('template')

@section('main')

<h2>Siswa</h2>
@include ('siswa.form_cari')
@if (!empty($siswa_list))
<div class="row">
	<div class="col-lg-11">
		<table class="table table-bordered table-striped table-condensed">
			<thead>
				<tr>
					<th>No. Induk</th>
					<th>Nama</th>
					<th>Kelas</th>
					<th>Poin</th>
					@if (Auth::user()->level != 1)
					<th width=5%>Laporkan</th>
					@endif
					@if (Auth::user()->level < 3)
					<th width=8%>Aksi</th>
					@endif
				</tr>
			</thead>
			<tbody>
				@foreach($siswa_list as $siswa)
				<tr>
					<td>{{ $siswa->no_induk }}</td>
					<td>{{ $siswa->nama_siswa }}</td>
					<td>
						@if ($siswa->kelas==1)
						{{'X'}}-{{$siswa->jurusan}}
						@elseif ($siswa->kelas==2)
						{{'XI'}}-{{$siswa->jurusan}}
						@elseif ($siswa->kelas==3)
						{{'XII'}}-{{$siswa->jurusan}}
						@endif
					</td>
					<td>{{ $siswa->poin}}</td>
					@if (Auth::user()->level != 1)
					<td>
						<div class="box-button inline-block">
							<a href="{{ url('laporan/penghargaan/' .$siswa->no_induk. '/create') }}" class="btn btn-success btn-xs btn-xs" title="Form Penghargaan"><span><i class="lnr lnr-thumbs-up"></i></span></a>
							<a href="{{ url('laporan/pelanggaran/' .$siswa->no_induk. '/create') }}" class="btn btn-danger btn-xs" title="Form Pelanggaran"><span><i class="lnr lnr-thumbs-down"></i></span></a>
						</div>
					</td>
					@endif
					@if (Auth::user()->level < 3)
					<td>

						<div class="box-button inline-block">
							<a href="{{ url('siswa/' . $siswa->no_induk) }}" class="btn btn-success btn-xs" title="Detail Siswa"><span><i class="fa fa-eye"></i></span></a>
							@if (Auth::user()->level ==1)
						</div>
						<div class="box-button inline-block">
							<a href="{{ url('siswa/' . $siswa->no_induk . '/edit') }}" class="btn btn-warning btn-xs" title="Ubah Data Siswa"><span><i class="fa fa-pencil"></i></span></a>
						</div>
						<div class="box-button inline-block">
							{!! Form::open(['method' => 'DELETE', 'action' => ['SiswaController@destroy', $siswa->no_induk]]) !!}
							{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Siswa'] )  }}
							{!! Form::close() !!}
						</div>
					</td>
					@endif
					@endif
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
@else
<p>Tidak ada data siswa</p>
@endif
<div class="table-nav">
	<div class="paging">
		{{ $siswa_list->links() }}
	</div>
</div>

<div class="darkblue-panel pn">
	<div class="darkblue-header">
		<h5>JUMLAH SISWA</h5>
		<h1 class="mt"><i class="fa fa-user fa-3x"></i></h1>
	</div>
	<footer>
		<div class="centered">
			<h5>{{ $jumlah_siswa }} Siswa</h5>
		</div>
		@if (Auth::user()->level==1)
		<div>
			<a href="siswa/create" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Siswa</a>
		</div>
		@endif
	</footer>
</div>

@stop

@section('footer')
@include('footer')
@stop
