<div class="col-md-4 mb col-md-offset-2">
	<div class="white-panel pn">
		<div class="white-header">
			<h5>Poin Terkecil</h5>
		</div>
		<p><img src="{{ asset("foto/{$siswa1->photo}") }}" class="img-circle" width="80"></p>
		<p><b>{{$siswa1->nama_siswa}}</b></p>
		<div class="row">
			<div class="col-md-4 col-md-offset-1-5">
				<p class="small mt">Kelas</p>
				<p>
				@if ($siswa1->kelas==1)
				{{'X'}}-{{$siswa1->jurusan}}
				@elseif ($siswa1->kelas==2)
				{{'XI'}}-{{$siswa1->jurusan}}
				@elseif ($siswa1->kelas==3)
				{{'XII'}}-{{$siswa1->jurusan}}
				@endif
				</p>
			</div>
			<div class="col-md-4">
				<p class="small mt">Poin</p>
				<p>{{$siswa1->poin}}</p>
			</div>
		</div>
	</div>
</div>