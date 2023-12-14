<?php include_once '../header.php'; ?>

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Asignación</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Inicio</a></li>
            <li class="breadcrumb-item active">Asignación</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <style>
    tr th { text-align: center; }
    tr td:nth-child(1){ text-align: center; }
    tr td:nth-child(3){ text-align: center; }
    tr td:nth-child(4){ text-align: center; }
    .form-label { font-weight: normal !important; }
  </style>

  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <table class="table table-sm table-striped table-bordered">
            <colgroup>
              <col width="5%">
              <col width="65%">
              <col width="15%">
              <col width="15%">
            </colgroup>
            <thead>
              <tr class="table-primary">
                <th>#</th>
                <th>Descripción del activo</th>
                <th>Stock</th>
                <th>Asignación</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Computadoras AIO Dell</td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Computadoras AIO Dell</td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Computadoras AIO Dell</td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
              </tr>
              <tr>
                <td>3</td>
                <td>Computadoras AIO Dell</td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
                <td><input type="number" min="0" max="5" class="form-control form-control-sm text-right"></td>
              </tr>
            </tbody>
          </table>
        </div> <!-- ./col-md-6 -->

        <div class="col-md-6">
          <ul class="list-group">
            <li class="list-group-item active">Áreas de asignación</li>
            <li class="list-group-item">
              <div class="form-group">
                <label for="">Áreas disponibles</label>
                <select name="" id="" class="form-control form-control-sm">
                  <option value="">Seleccione</option>
                </select>
              </div>
              <ul>
                <li>Activo 1 <a href="#">Quitar</a></li>
                <li>Activo 1 <a href="#">Quitar</a></li>
                <li>Activo 1 <a href="#">Quitar</a></li>
                <li>Activo 1 <a href="#">Quitar</a></li>
                <li>Activo 1 <a href="#">Quitar</a></li>
              </ul>
            </li>
          </ul>
        </div>

      </div> <!-- ./row -->

    </div>
  </div>
</div>

<?php include_once '../footer.php'; ?>

<!-- Falta invocar mi propio JS -->
<script>
  document.querySelector("#sblnk-asignacion").classList.add("active", "bg-primary");
</script>


<!-- Fin del HTML -->
<body>
</html>

