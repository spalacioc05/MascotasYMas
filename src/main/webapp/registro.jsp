<%-- 
    Document   : registro
    Created on : 22/11/2024, 7:40:11 p. m.
    Author     : spala
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/resgistro.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0"></main>
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">MASCOTAS & MÁS</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                             <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                            <li class="nav-item"><a class="nav-link" href="productos.jsp">Productos</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">Sobre de nosotros</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Contactanos</a></li>
                            <li class="nav-item"><a class="nav-link" href="faq.jsp">FAQ</a></li>

                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-9 mx-auto">
                <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
                    <div class="card-img-left d-none d-md-flex">
                    <!-- Background image for card set in CSS! -->
                    </div>
                    <div class="card-body p-4 p-sm-5"> 
                        <h5 class="card-title text-center mb-5 fw-light fs-5">Registro</h5>
                        <form action="Registrar" method="post">
                            <!-- Campo de Identificación -->
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="id" name="id" placeholder="ID">
                                <label for="id">Identificación</label>
                            </div>
                            <!-- Campo de Nombres -->
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="nombres" name="nombres" placeholder="Nombres">
                                <label for="nombres">Nombres</label>
                            </div>
                            <!-- Campo de Apellidos -->
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos">
                                <label for="apellidos">Apellidos</label>
                            </div>
                            <!-- Campo de Correo Electrónico -->
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="correo" name="correo" placeholder="Correo">
                                <label for="correo">Correo</label>
                            </div>
                            <!-- Campo de Teléfono -->
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Teléfono">
                                <label for="telefono">Teléfono</label>
                            </div>
                            <!-- Campo de Dirección -->
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección">
                                <label for="direccion">Dirección</label>
                            </div>
                            <!-- Campo de Fecha de Nacimiento -->
                            <div class="form-floating mb-3">
                                <input type="date" class="form-control" id="fechaNacimiento" name="fechaNacimiento" placeholder="Fecha de Nacimiento">
                                <label for="fechaNacimiento">Fecha de Nacimiento</label>
                            </div>
                            <hr>
                            <!-- Campo de Contraseña -->
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="clave" name="clave" placeholder="Contraseña">
                                <label for="clave">Contraseña</label>
                            </div>
                            <div class="d-grid mb-2">
                                <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" type="submit">Registrar</button>
                            </div>
                            <% if (request.getAttribute("mensaje") != null) { %>
                                <div class="alert alert-info" role="alert">
                                    <%= request.getAttribute("mensaje") %>
                                </div>
                            <% } %>
                        </form>
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
