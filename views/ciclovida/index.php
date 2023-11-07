<?php include_once '../header.php'; ?>

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Ciclo de vida</h1>
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

  <div class="content">
    <div class="container-fluid">
      <!-- Fila donde se muestra información del activo -->
      <div class="row">
        <div class="col-md-6 text-center">
          <img src="../../dist/img/activos/hp-aio.png" alt="" style="max-height: 320px;">
        </div>
        <div class="col-md-6">
          <ul class="list-group">
            <li class="list-group-item">Clasificación: <strong>Equipos informáticos</strong></li>
            <li class="list-group-item">Tipo: <strong>Computador All in One</strong></li>
            <li class="list-group-item">Descripción: <strong>HP 23.7" Intel Core i7 12va generación</strong></li>
            <li class="list-group-item">
              Datasheet:
              <ul>
                <li>Microprocesador Intel Core i7 12va generación</li>
                <li>32 Gb RAM DDR4</li>
                <li>Video dedicado AMD Radeon RX6500M</li>
                <li>1 TB HDD</li>
                <li>Windows 11 Home</li>
                <li>Pantalla táctil 10 puntos</li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
      <!-- Fin de la fila con información del activo -->

      <div class="row">
        <div class="col-md-12">

          <!-- COMPONENTE TIMELINE -->
          <div class="timeline">
            <!-- Timeline time label -->
            <div class="time-label">
              <span class="bg-green">23 Agosto 2019</span>
            </div>
            <div>
              <i class="fas fa-box-open bg-blue"></i>
              <div class="timeline-item">
                <span class="time"><i class="fas fa-clock"></i> 12:05</span>
                <h3 class="timeline-header"><strong>Recepción equipo</strong></h3>
                <div class="timeline-body">
                  <div>Guía remisión 001 - 1125</div>
                  <div>Enviado SENATI Independencia</div>
                </div>
                <div class="timeline-footer">
                  <a class="btn btn-primary btn-sm">Más información</a>
                  <a class="btn btn-danger btn-sm">Ver guía</a>
                </div>
              </div>
            </div>
            <!-- The last icon means the story is complete -->
            <div>
              <i class="fas fa-clock bg-gray"></i>
              <div class="timeline-item">
                <span class="time"><i class="fas fa-clock"></i> 13:20</span>
                <h3 class="timeline-header"><strong>Asignación de equipos</strong></h3>
                <div class="timeline-body">
                  <div>Entrega laboratorio ETI F303</div>
                  <div>Responsable: Instructor José Joel Rojas Marcos</div>
                </div>
                <div class="timeline-footer">
                  <a class="btn btn-primary btn-sm">Más información</a>
                </div>
              </div>
            </div>

            <div class="time-label">
              <span class="bg-green">10 febrero 2020</span>
            </div>
            <div>
              <i class="fas fa-box-open bg-blue"></i>
              <div class="timeline-item">
                <span class="time"><i class="fas fa-clock"></i> 08:45</span>
                <h3 class="timeline-header"><strong>Programación de mantenimiento preventivo</strong></h3>
                <div class="timeline-body">
                  <div>Responsable: Instructor José Joel Rojas Marcos</div>
                  <div>Detalles: verificación de sistema operativo y aplicaciones</div>
                  <div>Actualización de software</div>
                </div>
                <div class="timeline-footer">
                  <a class="btn btn-primary btn-sm">Más información</a>
                </div>
              </div>
            </div>
          </div>
          <!-- FIN COMPONENTE TIMELINE -->

        </div>
      </div>
    </div>
  </div> <!-- ./content -->

</div> <!-- ./content-wrapper -->


<?php include_once '../footer.php'; ?>

<!-- Falta invocar mi propio JS -->
<script>
  document.querySelector("#sblnk-ciclovida").classList.add("active", "bg-primary");
</script>


<!-- Fin del HTML -->
<body>
</html>

