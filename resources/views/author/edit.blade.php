@extends('layouts.master')

@section ('content')
<div class="main">
	<div class="main-content">
		<div class="container-fluid">
			<h1 class="page-title">Data Author</h1>
			<div class="row">
				
				
				<div class="col-md-6">
					
						<div class="panel">
						<div class="panel-heading">
									<h3 class="panel-title">Data Author</h3>
								</div>

									<form action="/author/{{$author->id}}/update" method="POST" enctype="multipart/form-data">
							{{csrf_field()}}



						<div class="panel-body">
					  <div class="form-group">
					    <label for="exampleInputEmail1" class="form-label">Nama Author</label>
					    <input type="text" name="author" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$author->author}}" >
					    </div>
					    <div class="form-group">
					    <label for="exampleInputEmail1" class="form-label">Nim / NIDN</label>
					    <input type="text" name="nim" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$author->nim}}" >
					    </div>
					    
					    <button type="submit" class="btn btn-warning ">Submit</button>

					 </form>
							
								</div>
				</div>
			</div>


						

							<br>
							
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
			</div>
		</div>
</div>



</div>
@endsection