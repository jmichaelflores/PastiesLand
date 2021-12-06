<?php $__env->startSection('title'); ?>
	Shopping Cart
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<?php if(Session::has('cart')): ?>
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
				<h1>Checkout</h1>
				<h4>El Total : $<?php echo e($total); ?></h4>
				<div id="charge-error" class="alert alert-danger <?php echo e(!Session::has('error') ? 'hidden' : ''); ?>">
					<?php echo e(Session::get('error')); ?>

				</div>
				<form action="<?php echo e(route('checkout')); ?>" method="post" id="checkout-form">
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
					<?php echo e(csrf_field()); ?>

					<button type="submit" class="btn btn-success">Comprar ahora</button>
				</form>
			</div>
		</div>
	<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
	<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	<script type="text/javascript" src="<?php echo e(URL::to('js/checkout.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>