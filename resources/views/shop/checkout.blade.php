@extends('layouts.master')

@section('title')
	Shopping Cart
@endsection

@section('content')
	@if(Session::has('cart'))
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
				<h1>Checkout</h1>
				<h4>El Total : ${{ $total }}</h4>
				<div id="charge-error" class="alert alert-danger {{!Session::has('error') ? 'hidden' : ''}}">
					{{ Session::get('error') }}
				</div>
				<form action="{{ route('checkout') }}" method="post" id="checkout-form">
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group">
								<label for="name">Nombre</label>
								<input type="text" id="name" class="form-control" name="name" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="address">Direccion de entrega</label>
								<input type="text" id="address" name="address" class="form-control" required>
							</div>
						</div>
						<hr>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="card-name">Nombre que aparece en la tarjeta</label>
								<input type="text" id="card-name" class="form-control" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="card-number">Número de tarjeta</label>
								<input type="text" id="card-number" class="form-control" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<label for="card-expiry-month">Mes</label>
										<input type="text" id="card-expiry-month" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<label for="card-expiry-year">Año</label>
										<input type="text" id="card-expiry-year" class="form-control" required>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="card-cvc">CVC</label>
								<input type="password" id="card-cvc" class="form-control" required>
							</div>
						</div>
					</div>
					{{ csrf_field() }}
					<button type="submit" class="btn btn-success">Comprar ahora</button>
				</form>
			</div>
		</div>
	@endif
@endsection

@section('scripts')
	<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	<script type="text/javascript" src="{{ URL::to('js/checkout.js') }}"></script>
@endsection