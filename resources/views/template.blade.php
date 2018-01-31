<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>SIMPANPOIN BPI</title>
		<link href="{{ asset('assets/css/bootstrap.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/lineicons/style.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/linear-icons/style.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/css/morris-0.4.3.min.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/flatpickr/flatpickr.css') }}" rel="stylesheet">

		<link href="{{ asset('assets/font-awesome/css/font-awesome.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/css/style-responsive.css') }}" rel="stylesheet">

		<script src="{{ asset('js/html5shiv.min.js') }}"></script>
		<script src="{{ asset('js/laravelapp.js') }}"></script>
		<script src="{{ asset('js/respond.min.js') }}"></script>
		<script src="{{ asset('assets/flatpickr/flatpickr.js') }}"></script>

	</head>
	<body>
		@include('navbar')


		@if (Auth::guest())
		<div id="main-content">
			<div class="wrapper">
				@yield('main')
			</div>
		</div>
		@else
		@include('sidebar')
		<div id="main-content">
			<div class="wrapper">
				<div class="panel panel-default">
					<div class="panel-body">
						@yield('main')
					</div>
				</div>
			</div>
		</div>
		@endif
		@yield('footer')

		<script src="{{ asset('assets/js/common-scripts')}}"></script>
		<script src="{{ asset('assets/js/jquery-2.2.4.min.js') }}"></script>
		<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
		<script src="{{ asset('assets/js/jquery.js') }}"></script>
		<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
		<script class="include" type="text/javascript" src="{{ asset('assets/js/jquery.dcjqaccordion.2.7.js') }}"></script>
		<script src="{{ asset('assets/js/jquery.scrollTo.min.js') }}"></script>
		<script src="{{ asset('assets/js/jquery.sparkline.js') }}"></script>


		<!--common script for all pages-->
		<script src="assets/js/common-scripts.js"></script>

		<script type="text/javascript" src="{{asset(assets/js/gritter/js/jquery.gritter.js)"></script>
		<script type="text/javascript" src="{{asset(assets/js/gritter-conf.js)"></script>
	</body>
</html>