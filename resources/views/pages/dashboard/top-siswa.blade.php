<div class="col-md-4 mb">
	<div class="white-panel pn">
		<div class="white-header">
			<h5>Poin Terbesar</h5>
		</div>
		<p><img src="{{ asset("foto/{$siswa->photo}") }}" class="img-circle" width="80"></p>
		<p><b>{{$siswa->nama_siswa}}</b></p>
		<div class="row">
			<div class="col-md-4 col-md-offset-1-5">
				<p class="small mt">Kelas</p>
				<p>
				@if ($siswa->kelas==1)
				{{'X'}}-{{$siswa->jurusan}}
				@elseif ($siswa->kelas==2)
				{{'XI'}}-{{$siswa->jurusan}}
				@elseif ($siswa->kelas==3)
				{{'XII'}}-{{$siswa->jurusan}}
				@endif
				</p>
			</div>
			<div class="col-md-4">
				<p class="small mt">Poin</p>
				<p>{{$siswa->poin}}</p>
			</div>
		</div>
	</div>
</div>