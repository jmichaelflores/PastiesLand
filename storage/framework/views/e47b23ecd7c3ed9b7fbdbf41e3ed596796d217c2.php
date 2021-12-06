<?php $__env->startSection('title'); ?>
	PastriLand
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<h1>Agregar Nuevo Producto</h1>
<hr>
<form action="codeaguardar" enctype="multipart/form-data" method="POST" style="width:80%;"> 
<div class="form-group">
    <label for="formGroupExampleInput">Nombre:</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput">Precio:</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput">Descripción:</label>
    <textarea type="textarea" class="form-control" id="formGroupExampleInput" placeholder=""></textarea>
  </div>

  <div class="form-group">
    <label for="formGroupExampleInput">Imagen:</label>
    <input type="file" class="form-control" id="formGroupExampleInput" placeholder="Example input">
  </div>
  <div class="form-group">   
      <button type="submit">Guardar</button>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>