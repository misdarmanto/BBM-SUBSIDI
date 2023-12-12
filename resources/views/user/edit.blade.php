@extends('layouts.master')

@section ('content')
<div class="main">
	<div class="main-content">
		<div class="container-fluid">
			<h1 class="page-title">Edit Data User</h1>
			<div class="row">
				
				
				<div class="col-md-6">
					
						<div class="panel">
						<div class="panel-heading">
									<h3 class="panel-title">Data PT</h3>
								</div>

									<form action="/user/{{$user->id}}/update" method="POST" enctype="multipart/form-data">
							{{csrf_field()}}



						<div class="panel-body">
					  <div class="form-group">
					    <label for="exampleInputEmail1" class="form-label">Nama PT</label>
					    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->name}}" >
					    </div>
					    <div class="form-group">
					    <label for="exampleInputEmail1" class="form-label">Nomor Giro</label>
					    <input type="text" name="nim" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->nim}}" >
					    </div>
					  

					 
					     <button type="submit" class="btn btn-warning ">Submit</button>

					 </form>
						
					 
						
				</div>
			</div>
				
			</div>
		</div>
				




		</div>
	</div>
</div>


@stop
@section('content1')
	<h1> Edit Data Anggota </h1>
	@if(session('sukses'))
	<div class="alert alert-success" role="alert">
  {{session('sukses')}}
</div>
@endif
	<div class="row">
		<div class="col-lg-12">
		
		
</div>



</div>
@endsection