@extends('template')

@section('main')

		<div class="row">
			<div class="col-lg-6">
				<h2>Pengguna</h2>
			</div>
			<div class="col-lg-4 col-lg-offset-2">
				<h2>
					<a href={{ route('register') }} class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Pengguna</a>
				</h2>
			</div>
		</div>
		@if (!empty($user_list))
      <table class="table table-bordered table-striped table-condensed"> 
      	<thead>
      		<tr>
      			<th width=8%>NIK</th>
      			<th>Nama</th>
      			<th>Tipe Akun</th>
      			<th width=8%>Aksi</th>
      		</tr>
      	</thead>
      	<tbody>
      		@foreach($user_list as $user)
      		<tr>
      			<td>{{ $user->username }}</td>
      			<td>{{ $user->name }}</td>
      			<td>@if($user->level==1)
							{{'Administrator'}}
							@elseif($user->level==2)
							{{'Kesiswaan'}}
							@else
							{{'Piket'}}
							@endif</td>
      		  <td>
      				<div class="box-button inline-block">
      					{!! Form::open(['method' => 'DELETE', 'action' => ['UserController@destroy', $user->id]]) !!}
      					{{ Form::button('<i class="fa fa-trash-o"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs',  'title'=>'Hapus Pengguna'] )  }}
      					{!! Form::close() !!}
      				</div>
      			</td>
      		</tr>
      		@endforeach
      	</tbody>
      </table>
		@else
			<p>Tidak ada data pengguna</p>
		@endif
		

@stop

@section('footer')
	@include('footer')
@stop
