<div class="col-md-4 col-sm-4 mb">
	<div class="white-panel pn donut-chart">
		<div class="white-header">
			<h5>Pelanggaran per Jurusan</h5>
	</div>
	<script src="{{ asset('assets/js/chart-master/Chart.js')}}"></script>
	<canvas id="serverstatus01" height="150" width="150"></canvas>
		<script>
			var rpl = {{$pelanggaran_rpl}}
			var tkj = {{$pelanggaran_tkj}}
			var ap  = {{$pelanggaran_ap}}
			var doughnutData = [
				{
					value: rpl,
					color:"#2196f3"
				},
				{
					value : tkj,
					color : "#0d47a1"
				},
				{
					value : ap,
					color : "#b0bec5"
				}];
			var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
		</script>
		<footer>
			<div class="col-sm-3 col-xs-offset-1">
				<p class="btn btn-xs btn-indicator1">RPL: {{$pelanggaran_rpl}}</p>
			</div>
			<div class="col-sm-3 col-xs-4">
				<p class="btn btn-xs btn-indicator2">TKJ: {{$pelanggaran_tkj}}</p>
			</div>
			<div class="col-sm-3 col-xs-4">
				<p class="btn btn-xs btn-indicator3">AP: {{$pelanggaran_ap}}</p>
			</div>
		</footer>
	</div><! --/grey-panel -->
</div><!-- /col-md-4-->