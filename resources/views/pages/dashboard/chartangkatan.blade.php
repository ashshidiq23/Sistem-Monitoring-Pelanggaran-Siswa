<div class="col-md-4 col-sm-4 mb">
	<div class="white-panel pn donut-chart">
		<div class="white-header">
			<h5>Pelanggaran per Jenis Kelamin</h5>
	</div>
	<script src="{{ asset('assets/js/chart-master/Chart.js')}}"></script>
	<canvas id="serverstatus03" height="150" width="150"></canvas>
		<script>
			var l = {{$jkl}}
			var p = {{$jkp}}
			var doughnutData = [
				{
					value: l,
					color:"#4db6ac"
				},
				{
					value : p,
					color : "#ff5252"
				}];
			var myDoughnut = new Chart(document.getElementById("serverstatus03").getContext("2d")).Doughnut(doughnutData);
		</script>
		<div class="row">
			<div class="col-sm-2 col-xs-offset-3 ">
				<p class="btn btn-xs btn-indicator4">L: {{$jkl}}</p>
			</div>
			<div class="col-sm-3 col-xs-4">
				<p class="btn btn-xs btn-indicator5">P: {{$jkp}}</p>
			</div>
		</div>
	</div><! --/grey-panel -->
</div><!-- /col-md-4-->