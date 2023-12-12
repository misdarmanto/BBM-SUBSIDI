@extends('layouts.master')
@section('content')
<div class="main">
	<div class="main-content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Selamat Datang {{auth()->user()->name}}</h3>



						</div>
					</div>

				</div>

				<div class="container mt-5">
					<div class="d-flex align-items-center mb-5">
						<form action="{{ route('subsidiBbm.import') }}" method="post" enctype="multipart/form-data">
							@csrf
							<div class="d-flex justify-content-between align-items-center">
								<input type="file" name="file" class="form-control d-inline-block">
								<button type="submit" class="btn btn-primary ml-2">Import</button>
							</div>
						</form>
						<a href="{{ route('subsidiBbm.export') }}" class="btn btn-success ml-2">Export</a>
					</div>

					<div style="width: 80%; margin: auto;">
						<canvas id="myChart"></canvas>
					</div>

					<script>
						var labels = [];
						var data = [];

						@foreach($subsidiBbm as $item)
						labels.push('{{ $item->tanggal }}');
						data.push('{{ $item->saldo }}');
						@endforeach

						var ctx = document.getElementById('myChart').getContext('2d');
						var myChart = new Chart(ctx, {
							type: 'line',
							data: {
								labels: labels,
								datasets: [{
									label: 'Subsidi BBM',
									data: data,
									backgroundColor: 'rgba(75, 192, 192, 0.2)',
									borderColor: 'rgba(75, 192, 192, 1)',
									borderWidth: 1
								}]
							},
							options: {
								scales: {
									y: {
										beginAtZero: true
									}
								}
							}
						});
					</script>
				</div>
			</div>


		</div>

		@stop