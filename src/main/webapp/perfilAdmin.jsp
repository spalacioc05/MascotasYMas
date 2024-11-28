<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.spalacioc.mascotasymas.model.Persona"%>
<%
    Persona usuario = (Persona) request.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("login.jsp?error=Acceso denegado. Solo administradores pueden acceder a esta página.");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Perfil de Administrador - MASCOTAS & MÁS</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/resgistro.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-5">
            <a class="navbar-brand" href="index.jsp">MASCOTAS & MÁS - ADMINISTRADOR</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="gestionarProductos.jsp">Productos</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownPerfil" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-person"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                            <li><a class="dropdown-item" href="perfil.jsp">Perfil</a></li>
                            <li><a class="dropdown-item" href="index.jsp">Vista de Usuario</a></li>
                            <li><a class="dropdown-item" href="login.jsp">Iniciar sesión</a></li>
                            <li><a class="dropdown-item" href="LogoutServlet">Cerrar sesión</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-xl-9 mx-auto">
                <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
                    <div class="card-body p-4 p-sm-5">
                        <h5 class="card-title text-center mb-5 fw-light fs-5">Perfil de Administrador</h5>
                        <!-- Tabs navs -->
                        <ul class="nav nav-tabs mb-3" id="ex1" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link2 active" id="tab-info" data-bs-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="true">Mi Información</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link2" id="tab-edit" data-bs-toggle="tab" href="#edit" role="tab" aria-controls="edit" aria-selected="false">Editar Perfil</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link2" id="tab-password" data-bs-toggle="tab" href="#password" role="tab" aria-controls="password" aria-selected="false">Cambiar Contraseña</a>
                            </li>
                        </ul>
                        <!-- Tabs content -->
                        <div class="tab-content" id="ex1-content">
                            <div class="tab-pane fade show active" id="info" role="tabpanel" aria-labelledby="tab-info">
                                <form>
                                    <!-- Campo de Identificación -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputId" value="<%= usuario.getId() %>" readonly>
                                        <label for="floatingInputId">Identificación</label>
                                    </div>
                                    
                                    <!-- Campo de Nombres -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputName" value="<%= usuario.getNombres() %>" readonly>
                                        <label for="floatingInputName">Nombres</label>
                                    </div>
                                    
                                    <!-- Campo de Apellidos -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputSurname" value="<%= usuario.getApellidos() %>" readonly>
                                        <label for="floatingInputSurname">Apellidos</label>
                                    </div>
                                    
                                    <!-- Campo de Correo Electrónico -->
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" id="floatingInputEmail" value="<%= usuario.getCorreo() %>" readonly>
                                        <label for="floatingInputEmail">Correo Electrónico</label>
                                    </div>
                                    
                                    <!-- Campo de Teléfono -->
                                    <div class="form-floating mb-3">
                                        <input type="tel" class="form-control" id="floatingInputPhone" value="<%= usuario.getTelefono() %>" readonly>
                                        <label for="floatingInputPhone">Teléfono</label>
                                    </div>
                                    
                                    <!-- Campo de Dirección -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputAddress" value="<%= usuario.getDireccion() %>" readonly>
                                        <label for="floatingInputAddress">Dirección</label>
                                    </div>
                                    
                                    <!-- Campo de Fecha de Nacimiento -->
                                    <div class="form-floating mb-3">
                                        <input type="date" class="form-control" id="floatingInputDOB" value="<%= usuario.getFechaNacimiento() %>" readonly>
                                        <label for="floatingInputDOB">Fecha de Nacimiento</label>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="edit" role="tabpanel" aria-labelledby="tab-edit">
                                <form action="EditProfileServlet" method="post">
                                    <!-- Campo de Identificación -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputId" value="<%= usuario.getId() %>" readonly>
                                        <label for="floatingInputId">Identificación</label>
                                    </div>
                                    
                                    <!-- Campo de Nombres -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputName" name="nombres" value="<%= usuario.getNombres() %>" required>
                                        <label for="floatingInputName">Nombres</label>
                                    </div>
                                    
                                    <!-- Campo de Apellidos -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputSurname" name="apellidos" value="<%= usuario.getApellidos() %>" required>
                                        <label for="floatingInputSurname">Apellidos</label>
                                    </div>
                                    
                                    <!-- Campo de Correo Electrónico -->
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" id="floatingInputEmail" name="correo" value="<%= usuario.getCorreo() %>" required>
                                        <label for="floatingInputEmail">Correo Electrónico</label>
                                    </div>
                                    
                                    <!-- Campo de Teléfono -->
                                    <div class="form-floating mb-3">
                                        <input type="tel" class="form-control" id="floatingInputPhone" name="telefono" value="<%= usuario.getTelefono() %>" required>
                                        <label for="floatingInputPhone">Teléfono</label>
                                    </div>
                                    
                                    <!-- Campo de Dirección -->
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInputAddress" name="direccion" value="<%= usuario.getDireccion() %>" required>
                                        <label for="floatingInputAddress">Dirección</label>
                                    </div>
                                    
                                    <!-- Campo de Fecha de Nacimiento -->
                                    <div class="form-floating mb-3">
                                        <input type="date" class="form-control" id="floatingInputDOB" name="fechaNacimiento" value="<%= usuario.getFechaNacimiento() %>" required>
                                        <label for="floatingInputDOB">Fecha de Nacimiento</label>
                                    </div>
                                    
                                    <div class="d-grid mb-2">
                                        <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" type="submit">Guardar Cambios</button>
                                    </div>
                                    
                                </form>
                            </div>
                            <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="tab-password">
                                <form action="ChangePasswordServlet" method="post">
                                    <!-- Campo de Contraseña Actual -->
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" id="floatingPassword" name="currentPassword" placeholder="Contraseña actual" required>
                                        <label for="floatingPassword">Contraseña actual</label>
                                    </div>
                                    <!-- Campo de Nueva Contraseña -->
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" id="floatingNewPassword" name="newPassword" placeholder="Nueva contraseña" required>
                                        <label for="floatingNewPassword">Nueva contraseña</label>
                                    </div>
                                    
                                    <!-- Campo de Confirmar Nueva Contraseña -->
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" id="floatingPasswordConfirm" name="confirmPassword" placeholder="Confirmar nueva contraseña" required>
                                        <label for="floatingPasswordConfirm">Confirmar nueva contraseña</label>
                                    </div>
                                    
                                    <div class="d-grid mb-2">
                                        <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" type="submit">Cambiar Contraseña</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Footer-->
<footer class="bg-dark py-4 mt-auto">
    <div class="container px-5">
        <div class="row align-items-center justify-content-between flex-column flex-sm-row">
            <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; MASCOTAS & MÁS 2023</div></div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>