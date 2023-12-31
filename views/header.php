<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CMMS</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Inicio</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Ayuda</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-header">Jhon Francia Minaya</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> Perfil
            <!-- <span class="float-right text-muted text-sm">3 mins</span> -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> Cambiar contraseña
            <!-- <span class="float-right text-muted text-sm">12 hours</span> -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> Cerrar sesión
            <!-- <span class="float-right text-muted text-sm">2 days</span> -->
          </a>
          <div class="dropdown-divider"></div>
          <span class="dropdown-header">Instructor</span>
        </div>
      </li>

    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../home/index.php" class="brand-link">
      <img src="../../dist/img/tech-support-32-white.png" alt="AdminLTE Logo" class="brand-image img-circle " style="opacity: .8">
      <span class="brand-text font-weight-light">Gestión activos</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

    <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Procesos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../guias" class="nav-link" id="sblnk-guiaremision">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Guía remisión</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../asignacion" class="nav-link" id="sblnk-asignacion">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Asignación</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../programacion" class="nav-link" id="sblnk-programacion">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Programación tareas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../mantenimientos" class="nav-link" id="sblnk-mantenimientos">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Mantenimientos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../ia" class="nav-link" id="sblnk-asistenteia">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Asistente IA</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../locaciones" class="nav-link" id="sblnk-locaciones">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Cambio locaciones</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../baja" class="nav-link" id="sblnk-baja">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Bienes de baja</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="../ciclovida/" class="nav-link" id="sblnk-ciclovida">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Ciclo de vida
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Reportes
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Gestión de usuarios
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>