@extends('layouts.master')
@section('content')
<div class="main">
	<div class="main-content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading">
							<div class="row">
								<div class="col-sm-6 col-md-4">
									<img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/271deea8-e28c-41a3-aaf5-2913f5f48be6/de7834s-6515bd40-8b2c-4dc6-a843-5ac1a95a8b55.jpg/v1/fill/w_300,h_300,q_75,strp/default_user_icon_4_by_karmaanddestiny_de7834s-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzAwIiwicGF0aCI6IlwvZlwvMjcxZGVlYTgtZTI4Yy00MWEzLWFhZjUtMjkxM2Y1ZjQ4YmU2XC9kZTc4MzRzLTY1MTViZDQwLThiMmMtNGRjNi1hODQzLTVhYzFhOTVhOGI1NS5qcGciLCJ3aWR0aCI6Ijw9MzAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.W7L0Rf_YqFzX9yxDfKtIMFnnRFdjwCHxi7xeIISAHNM" alt="" class="img-rounded img-responsive" />
								</div>
								<div class="col-sm-6 col-md-8">
									<h1>
										{{auth()->user()->name}}
									</h1>
									<br />
									<i class="glyphicon glyphicon-envelope"></i> Email: {{auth()->user()->email}}
									<br /><br />
									<span class="glyphicon glyphicon-education"></span> NIM: {{auth()->user()->nim}}
									<br /> <br />
									<i class="glyphicon glyphicon-gift"></i> Bergabung Pada: {{auth()->user()->created_at}}
									<br /><br />
									<span class="glyphicon glyphicon-check"></span> Role: {{auth()->user()->role}}
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	@stop