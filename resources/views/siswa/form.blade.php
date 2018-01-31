
@if (isset($siswa))
{!! Form::hidden('no_induk', $siswa->no_induk) !!}
@endif

{{--no_induk--}}
@if($errors->any())
<div class="form-group {{ $errors->has('no_induk')? 'has-error' : 'has-success' }}">
	@else
	<div class="form-group">
		@endif
		{!! Form::label('no_induk', 'No. Induk', ['class' => 'control-label']) !!}
		{!! Form::text('no_induk', null, ['class' => 'form-control']) !!}
		@if ($errors->has('no_induk'))
		<span class="help-block">
			{{ $errors->first('no_induk') }}
		</span>
		@endif
	</div>

	{{--nama_siswa--}}
	@if($errors->any())
	<div class="form-group {{ $errors->has('nama_siswa')? 'has-error' : 'has-success' }}">
		@else
		<div class="form-group">
			@endif
			{!! Form::label('nama_siswa', 'Nama', ['class' => 'control-label']) !!}
			{!! Form::text('nama_siswa', null, ['class' => 'form-control']) !!}
			@if ($errors->has('nama_siswa'))
			<span class="help-block">
				{{ $errors->first('nama_siswa') }}
			</span>
			@endif
		</div>

		{{--jenis kelamin--}}
		@if($errors->any())
		<div class="form-group {{ $errors->has('jk')? 'has-error' : 'has-success' }}">
			@else
			<div class="form-group">
				@endif
				{!! Form::label('jk', 'Jenis Kelamin', ['class' => 'control-label']) !!}
				<div class="radio"><label>{!! Form::radio('jk', 'L') !!}Laki-Laki</label></div>
				<div class="radio"><label>{!! Form::radio('jk', 'P') !!}Perempuan</label></div>
				@if ($errors->has('jk'))
				<span class="help-block">
					{{ $errors->first('jk') }}
				</span>
				@endif
			</div>
			{{--tempat_lahir--}}
			@if($errors->any())
			<div class="form-group {{ $errors->has('tempat_lahir')? 'has-error' : 'has-success' }}">
				@else
				<div class="form-group">
					@endif
					{!! Form::label('tempat_lahir', 'Tempat Lahir', ['class' => 'control-label']) !!}
					{!! Form::text('tempat_lahir', null, ['class' => 'form-control']) !!}
					@if ($errors->has('tempat_lahir'))
					<span class="help-block">
						{{ $errors->first('tempat_lahir') }}
					</span>
					@endif
				</div>

				{{--tanggal lahir--}}
				@if($errors->any())
				<div class="form-group {{ $errors->has('tgl_lahir')? 'has-error' : 'has-success' }}">
					@else
					<div class="form-group">
						@endif
						{!! Form::label('tgl_lahir', 'Tanggal Lahir', ['class' => 'control-label']) !!}
						{!! Form::date('tgl_lahir', !empty($siswa)? $siswa->tgl_lahir->format('Y-m-d'): null, ['class' => 'form-control', 'id' => 'tgl_lahir'])!!}
						@if ($errors->has('tgl_lahir'))
						<span class="help-block">
							{{ $errors->first('tgl_lahir') }}
						</span>
						@endif
					</div>

					{{--agama--}}
					@if($errors->any())
					<div class="form-group {{ $errors->has('tempat_lahir')? 'has-error' : 'has-success' }}">
						@else
						<div class="form-group">
							@endif
							{!! Form::label('agama', 'Agama', ['class' => 'control-label']) !!}
							{!! Form::text('agama', null, ['class' => 'form-control']) !!}
							@if ($errors->has('agama'))
							<span class="help-block">
								{{ $errors->first('agama') }}
							</span>
							@endif
						</div>

						{{--alamat--}}
						@if($errors->any())
						<div class="form-group {{ $errors->has('alamat')? 'has-error' : 'has-success' }}">
							@else
							<div class="form-group">
								@endif
								{!! Form::label('alamat', 'Alamat', ['class' => 'control-label']) !!}
								{!! Form::text('alamat', null, ['class' => 'form-control']) !!}
								@if ($errors->has('alamat'))
								<span class="help-block">
									{{ $errors->first('alamat') }}
								</span>
								@endif
							</div>
							<div class="row">
								<div class="col-md-1-5 col-md-offset-0-5">
									{{--kelas--}}
									@if($errors->any())
									<div class="form-group {{ $errors->has('kelas')? 'has-error' : 'has-success' }}">
										@else
										<div class="form-group">
											@endif
											{!! Form::label('kelas', 'Kelas', ['class' => 'control-label']) !!}
										{!!Form::select('kelas', ['1' => 'X', '2' => 'XI', '3' => 'XII'], null, ['class'=>'form-control', 'placeholder' => 'Pilih Kelas...'])!!}
										@if ($errors->has('kelas'))
										<span class="help-block">
											{{ $errors->first('kelas') }}
										</span>
										@endif
									</div>
								</div>
								<div class="col-md-1-5 col-md-offset-0-5">
									{{--jurusan--}}
									@if($errors->any())
									<div class="form-group {{ $errors->has('jurusan')? 'has-error' : 'has-success' }}">
										@else
										<div class="form-group">
											@endif
											{!! Form::label('jurusan', 'Jurusan', ['class' => 'control-label']) !!}
											{!!Form::select('jurusan', ['1' => 'RPL', '2' => 'TKJ', '3' => 'AP'], null, ['class'=>'form-control', 'placeholder' => 'Pilih Jurusan...'])!!}
											@if ($errors->has('jurusan'))
											<span class="help-block">
												{{ $errors->first('jurusan') }}
											</span>
											@endif
										</div>
									</div>
								</div>
								</div>
								{{--photo--}}
								@if($errors->any())
								<div class="form-group {{ $errors->has('photo')? 'has-error' : 'has-success' }}">
									@else
									<div class="form-group">
										@endif
										{!! Form::label('photo', 'Foto', ['class' => 'control-label']) !!}
										{!! Form::file('photo', ['class' => 'btn btn-default']) !!}
										@if ($errors->has('photo'))
										<span class="help-block">
											{{ $errors->first('photo') }}
										</span>
										@endif
									</div>
									<div class="form-group">
										{!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
									</div>