<?php include_once '../header.php'; ?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Guías de remisión</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Inicio</a></li>
            <li class="breadcrumb-item active">Guía de remisión</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <style>
    tr th { text-align: center; }
    tr td:nth-child(1){ text-align: center; }
    tr td:nth-child(2){ text-align: center; }
    tr td:nth-child(3){ text-align: center; }
    tr td:nth-child(4){ text-align: center; }
    tr td:nth-child(6){ text-align: center; }
  </style>

  <div class="content">
    <div class="container-fluid">

      <!-- Sección para los datos generales de la guía -->
<!--       <div class="row">
        <blockquote class="quote-info">
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo porro facere voluptatum, vero illum beatae itaque
          </p>
        </blockquote>
      </div> -->

      <div class="row">
        <div class="col-md-12 mb-3">
          <ul class="list-group">
            <li class="list-group-item active">
              <div class="row">
                <div class="col-md-6"><span>Información general de la guía de remisión</span></div>
                <div class="col-md-6 text-right ">
                  <a href="#" class="btn btn-sm btn-dark"><i class="fa-solid fa-file"></i> Nueva guía</a>
                  <a href="#" class="btn btn-sm btn-dark"><i class="fa-solid fa-ban"></i> Cancelar</a>
                </div>
              </div>
            </li>
            <li class="list-group-item" >
              <div class="row">
                <div class="col-md-2 form-group">
                  <label for="">Número de guía</label>
                  <input type="text" class="form-control form-control-sm text-center">
                </div>
                <div class="col-md-2 form-group">
                  <label for="">Fecha emisión</label>
                  <input type="date" class="form-control form-control-sm">
                </div>
                <div class="col-md-2 form-group">
                  <label for="">Fecha recepción</label>
                  <input type="date" class="form-control form-control-sm">
                </div>
                <div class="col-md-4 form-group">
                  <label for="">Remite</label>
                  <div class="input-group">
                    <input type="text" class="form-control form-control-sm">
                    <div class="input-group-append">
                      <button class="btn btn-sm btn-outline-success">Buscar</button>
                    </div>
                  </div>
                </div>
                <div class="col-md-2 form-group">
                  <label for="">Motivo</label>
                  <select name="" id="" class="form-control form-control-sm">
                    <option value="">Seleccione</option>
                    <option value="">Compras</option>
                  </select>
                </div>
              </div>
            </li>
          </ul>

          <div class="mt-2">
            <small>A continuación deberá indicar los datos de los activos recibidos</small>
          </div>

          <ul class="list-group mt-2">
            <li class="list-group-item">
              <div class="row">
                <div class="col-md-2 form-group">
                  <label for="">Cantidad</label>
                  <input type="number" class="form-control form-control-sm text-center">
                </div>
                <div class="col-md-2 form-group">
                  <label for="">Código</label>
                  <input type="text" class="form-control form-control-sm text-center">
                </div>
                <div class="col-md-2 form-group">
                  <label for="">Unidad</label>
                  <select name="" id="" class="form-control form-control-sm">
                    <option value="">Seleccione</option>
                    <option value="">NIU</option>
                  </select>
                </div>
                <div class="col-md-5 form-group">
                  <label for="">Activo que se agregará al sistema</label>
                  <div class="input-group">
                    <input type="text" class="form-control form-control-sm">
                    <div class="input-group-append">
                      <button class="btn btn-sm btn-outline-success">Buscar</button>
                    </div>
                  </div>
                </div>
                <div class="col-md-1">
                  <label for="">&nbsp;</label>
                  <button class="btn btn-primary btn-sm btn-block"><i class="fa-solid fa-plus"></i> Agregar</button>
                </div>
              </div>
            </li>
          </ul>

        </div>
      </div>
      <!-- Fin cabecera de la guía -->
      
      <!-- Espacio para la tabla con sus detalles -->
      <div class="row">
        <div class="col-md-12">
          <table class="table table-bordered table-striped table-sm">
            <colgroup>
              <col width="5%">
              <col width="10%">
              <col width="10%">
              <col width="10%">
              <col width="55%">
              <col width="10%">
            </colgroup>
            <thead>
              <tr>
                <th>#</th>
                <th>Cantidad</th>
                <th>Código</th>
                <th>Unidad</th>
                <th>Descripción</th>
                <th>Comandos</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>21</td>
                <td>-</td>
                <td>NIU</td>
                <td>Micrómetro interior de 5 - 25</td>
                <td><a href="#" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Quitar</a></td>
              </tr>
              <tr>
                <td>2</td>
                <td>21</td>
                <td>-</td>
                <td>NIU</td>
                <td>Multímetro digital T01103365</td>
                <td><a href="#" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Quitar</a></td>
              </tr>
              <tr>
                <td>3</td>
                <td>21</td>
                <td>-</td>
                <td>NIU</td>
                <td>Pinza amperimétrica</td>
                <td><a href="#" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Quitar</a></td>
              </tr>
            </tbody>
          </table>  
        </div>
      </div>
      <!-- Fin tabla detalle guía -->

      <div class="row">
        <div class="col-md-12">
          <ul class="list-group">
            <li class="list-group-item text-right">
              <button class="btn btn-info btn-sm"><i class="fa-solid fa-clock-rotate-left"></i> Consultar historial</button>
              <button class="btn btn-info btn-sm"><i class="fa-solid fa-hard-drive"></i> Guardar guía</button>
            </li>
          </ul>
        </div>
      </div>

    </div> <!-- container-fluid -->
  </div> <!-- content -->
</div> <!-- content-wrapper -->

<?php include_once '../footer.php'; ?>

<!-- Falta invocar mi propio JS -->
<script>
  document.querySelector("#sblnk-guiaremision").classList.add("active", "bg-primary");
</script>


<!-- Fin del HTML -->
<body>
</html>

