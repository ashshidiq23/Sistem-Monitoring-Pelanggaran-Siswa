<div id="cari">
	{!! Form::open(['url' => 'siswa/cari', 'method' => 'GET', 'id'=>'form-cari']) !!}
	<div class="row">
		<div class="col-md-2">
			 {!!Form::select('kelas', ['1' => 'X', '2' => 'XI', '3' => 'XII'], (! empty($kelas) ? $kelas : null), 
			 ['id'=>'kelas', 'class'=>'form-control', 'placeholder' => 'Pilih Kelas...'])!!}
		</div>
		<div class="col-md-2">
			{!!Form::select('jurusan', ['1' => 'RPL', '2' => 'TKJ', '3' => 'AP'], (! empty($jurusan) ? $jurusan : null), 
			['id'=>'jurusan', 'class'=>'form-control', 'placeholder' => 'Pilih Jurusan...'])!!}
		</div>
		<div class="col-md-8">
			<div class="input-group">
				{!! Form::text ('keyword', (!empty($keyword))?
				$keyword : null, ['class'=>'form-control', 'placeholder' => 'Masukkan Nama Siswa'])!!}
				<span class="input-group-btn">
					{!! Form::button('Cari', ['class'=>'btn btn-default', 'type'=>'submit'])!!}
				</span>
			</div>
		</div>
	</div>
	{!! Form::close() !!}
</div>