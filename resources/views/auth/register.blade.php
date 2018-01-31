@extends('template')

@section('main')
<div class="container">
	<br>
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Tambah Pengguna</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" method="POST" action="{{ route('register') }}">
						{{ csrf_field() }}

						<div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
							<label for="name" class="col-md-4 control-label">Nama</label>

							<div class="col-md-6">
								<input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

								@if ($errors->has('name'))
								<span class="help-block">
									<strong>{{ $errors->first('name') }}</strong>
								</span>
								@endif
							</div>
						</div>
						<div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
							<label for="username" class="col-md-4 control-label">NIK</label>

							<div class="col-md-6">
								<input id="username" type="username" class="form-control" name="username" value="{{ old('username') }}" required>

								@if ($errors->has('username'))
								<span class="help-block">
									<strong>{{ $errors->first('username') }}</strong>
								</span>
								@endif
							</div>
						</div>
						<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
							<label for="email" class="col-md-4 control-label">Alamat E-Mail</label>

							<div class="col-md-6">
								<input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

								@if ($errors->has('email'))
								<span class="help-block">
									<strong>{{ $errors->first('email') }}</strong>
								</span>
								@endif
							</div>
						</div>

						<div class="form-group{{ $errors->has('level') ? ' has-error' : '' }}">
							<label for="level" class="col-md-4 control-label">Hak Akses</label>

							<div class="col-md-6">
								<select id="level" type="level" class="form-control" name="level" value="{{ old('level') }}" required>
									<option value="1">Administrator</option>
									<option value="2">Kesiswaan</option>
									<option value="3">Guru Piket</option>
								</select>
								@if ($errors->has('level'))
								<span class="help-block">
									<strong>{{ $errors->first('level') }}</strong>
								</span>
								@endif
							</div>
						</div>

						<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
							<label for="password" class="col-md-4 control-label">Kata Sandi</label>

							<div class="col-md-6">
								<input id="password" type="password" class="form-control" name="password" required>

								@if ($errors->has('password'))
								<span class="help-block">
									<strong>{{ $errors->first('password') }}</strong>
								</span>
								@endif
							</div>
						</div>
						<div class="form-group">
							<label for="password-confirm" class="col-md-4 control-label">Konfirmasi Kata Sandi</label>

							<div class="col-md-6">
								<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
									Tambahkan
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
