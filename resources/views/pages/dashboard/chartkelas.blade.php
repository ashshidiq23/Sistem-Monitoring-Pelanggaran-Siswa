<div class="col-md-4 col-sm-4 mb">
	<div class="white-panel pn stock-chart">
		<div class="white-header">
			<h5>Pelanggaran per Kelas</h5>
	</div>
	<script src="{{asset('assets/js/Chart.bundle.min.js')}}"></script>
	<canvas id="myChart" width="120" height="100"></canvas>
	<script>
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: ["X", "XI", "XII"],
	        datasets: [{
	            label: 'RPL',
	            data: [2, 4, 3],
	            backgroundColor: [
	                '#2196f3',
	                '#2196f3',
	                '#2196f3'
	            ],
	            
	        },
					{
	            label: 'TKJ',
	            data: [5, 9, 3],
	            backgroundColor: [
	                '#b0bec5',
	                '#b0bec5',
	                '#b0bec5'
	            ],
	        },
	        {
	            label: 'AP',
	            data: [1, 1, 3],
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
	</div><! --/grey-panel -->
</div><!-- /col-md-4-->