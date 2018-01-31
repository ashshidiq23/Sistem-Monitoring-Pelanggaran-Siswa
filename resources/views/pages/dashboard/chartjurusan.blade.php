<div class="col-md-4 col-sm-4 mb">
	<div class="white-panel pn donut-chart">
		<div class="white-header">
			<h5>Pelanggaran per Jurusan</h5>
	</div>
	<script src="{{ asset('assets/js/chart-master/Chart.js')}}"></script>
	<canvas id="serverstatus01" height="150" width="150"></canvas>
		<script>
			var doughnutData = [
				{
					value: 40,
					color:"#2196f3"
				},
				{
					value : 30,
					color : "#0d47a1"
				},
				{
					value : 30,
					color : "#b0bec5"
				}];
			var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
		</script>
		<div class="row">
			<div class="col-sm-3 col-xs-4 col-xs-offset-1">
				<p class="btn btn-indicator1">RPL</p>
				<p>40%</p>
			</div>
			<div class="col-sm-3 col-xs-4">
				<p class="btn btn-indicator2">TKJ</p>
				<p>30%</p>
			</div>
			<div class="col-sm-3 col-xs-4">
				<p class="btn btn-indicator3">AP</p>
				<p>30%</p>
			</div>
		</div>
	</div><! --/grey-panel -->
</div><!-- /col-md-4-->