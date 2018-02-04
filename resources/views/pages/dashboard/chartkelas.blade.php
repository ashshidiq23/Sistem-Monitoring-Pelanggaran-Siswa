<div class="col-md-4 col-sm-4 mb">
	<div class="white-panel pn stock-chart">
		<div class="white-header">
			<h5>Pelanggaran per Kelas</h5>
	</div>
	<script src="{{asset('assets/js/Chart.bundle.min.js')}}"></script>
	<canvas id="myChart" width="120" height="100"></canvas>
	<script>
	var ctx = document.getElementById("myChart");
	var rpl1 = {{$rpl1}}
	var rpl2 = {{$rpl2}}
	var rpl3 = {{$rpl3}}
	var tkj1 = {{$tkj1}}
	var tkj2 = {{$tkj2}}
	var tkj3 = {{$tkj3}}
	var ap1 = {{$ap1}}
	var ap2 = {{$ap2}}
	var ap3 = {{$ap3}}
	var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: ["X", "XI", "XII"],
	        datasets: [{
	            label: 'RPL',
	            data: [rpl1, rpl2, rpl3],
	            backgroundColor: [
	                '#2196f3',
	                '#2196f3',
	                '#2196f3'
	            ],
	            
	        },
					{
	            label: 'TKJ',
	            data: [tkj1, tkj2, tkj3],
	            backgroundColor: [
	                '#b0bec5',
	                '#b0bec5',
	                '#b0bec5'
	            ],
	        },
	        {
	            label: 'AP',
	            data: [ap1, ap2, ap3],
	            backgroundColor: [
	                '#0d47a1',
	                '#0d47a1',
	                '#0d47a1'
	            ],
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
					stacked: true,
	                ticks: {
	                    beginAtZero:true
	                }
	            }],
	            xAxes: [{
					stacked: true,
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
				
	        }
	    }
	});
	</script>
	<div class="row">
		Jumlah Pelanggaran per kelas:
	</div>
	<div class="row">
		<div class="col-lg-3">
			<p class="btn btn-xs btn-indicator4">X: {{$rpl1+$tkj1+$ap1}}</p>
		</div>
		<div class="col-lg-3">
			<p class="btn btn-xs btn-indicator4">XI: {{$rpl2+$tkj2+$ap2}}</p>
		</div>
		<div class="col-lg-3 col-cs-offset-1">
			<p class="btn btn-xs btn-indicator4">XII: {{$rpl3+$tkj3+$ap3}}</p>
		</div>
	</div>
	</div><! --/grey-panel -->
</div><!-- /col-md-4-->