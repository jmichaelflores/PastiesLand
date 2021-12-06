@extends('layouts.master')

@section('title')
	PastriLand
@endsection

@section('content')
	@if(Session::has('success'))
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
			<div id="charge-message" class="alert alert-success">
				{{ Session::get('success') }}
			</div>
		</div>
	</div>
	@endif

	<div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>


		    <!-- Wrapper for slides -->
			<div class="carousel-inner">
      <div class="item active" >
        <center><img src="/img/logo.png" alt="Los Angeles" style="height:320px;"></center>
      </div>

      <div class="item">
        <center><img src="/img/p1.png" alt="Chicago" style="height:320px;"></center>
      </div>
    
      <div class="item">
        <center><img src="/img/p2.png" alt="New york" style="height:320px;"></center>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

	<!--<h1>It Works!!</h1>-->
	@foreach($products->chunk(3) as $productChunk)
		<div class="row" style='margin-top:70px;'>
			@foreach($productChunk as $product)
				<div class="col-sm-6 col-md-4">
			    	<div class="thumbnail">
			      		<img src="{{ $product->imagepath }}" alt="..." class="img-responsive">
			      		<div class="caption">
			        		<h3>{{ $product->title }}</h3>
			        		<p class="description">
			        			{{ $product->description }}
			        		</p>
			        		<div class="clearfix">
				        		<div class="pull-left price">
				        			Precio: ${{ $product->price }}
				        		</div>
			        			<a href="{{ route('product.addtocart', ['id' => $product->id]) }}" class="btn btn-success pull-right" role="button">Agregar al carrito</a>
			        		</div>
			        	</div>
			      	</div>
			    </div>
			@endforeach
		</div>
	@endforeach
@endsection