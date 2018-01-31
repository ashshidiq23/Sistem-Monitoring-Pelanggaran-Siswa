<header class="header black-bg">
	<a href="{{ url('/') }}" class="logo"><img src="{{asset('assets/img/bpi-logo.png')}}" style="width:40px;height:42px;"><b> SIMPAN POIN BPI</b></a>
	@if (Auth::check())
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li>
			<a class="logout" href="{{ route('logout') }}"
				onclick="event.preventDefault();
				document.getElementById('logout-form').submit();">
				Keluar
			</a>

			<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
				{{ csrf_field() }}
			</form>
			</li>
		</ul>
	</div>
	
	@endif
</header>