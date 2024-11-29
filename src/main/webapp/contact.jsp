<%-- 
    Document   : contact
    Created on : 22/11/2024, 6:49:55 p. m.
    Author     : spala
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contactanos - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
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
                             
                              
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPerfil" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-person"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                                    <li><a class="dropdown-item" href="perfil.jsp">Perfil</a></li>
                                    <li><a class="dropdown-item" href="perfilAdmin.jsp">Vista de administrador</a></li>
                                    <li><a class="dropdown-item" href="registro.jsp">Registrarse</a></li>
                                    <li><a class="dropdown-item" href="login.jsp">Iniciar sesión</a></li>
                                    <li><a class="dropdown-item" href="LogoutServlet">Cerrar sesión</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Contact Us Section -->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact Form -->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <h1 class="fw-bolder">Contáctanos</h1>
                            <p class="lead fw-normal text-muted mb-0">Nos encantaría saber de ti</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <form action="ContactoServlet" method="post">
                                    <!-- Name input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="nombres" name="nombres" type="text" placeholder="Escribe tu nombre..." required />
                                        <label for="nombres">Nombres</label>
                                        <div class="invalid-feedback">El nombre es obligatorio.</div>
                                    </div>
                                    <!-- Name input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="apellidos" name="apellidos" type="text" placeholder="Escribe tu nombre..." required />
                                        <label for="apellidos">Apellidos</label>
                                        <div class="invalid-feedback">El apellido es obligatorio.</div>
                                    </div>
                                    <!-- Email address input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="correo" name="correo" type="email" placeholder="nombre@ejemplo.com" required />
                                        <label for="correo">Correo Electrónico</label>
                                        <div class="invalid-feedback">El correo es obligatorio.</div>
                                    </div>
                                    <!-- Phone number input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="telefono" name="telefono" type="tel" placeholder="(123) 456-7890" required />
                                        <label for="telefono">Teléfono</label>
                                        <div class="invalid-feedback">El teléfono es obligatorio.</div>
                                    </div>
                                    <!-- Message input-->
                                    <div class="form-floating mb-3">
                                        <textarea class="form-control" id="mensaje" name="mensaje" placeholder="Escribe tu mensaje aquí..." style="height: 10rem" required></textarea>
                                        <label for="mensaje">Mensaje</label>
                                        <div class="invalid-feedback">El mensaje es obligatorio.</div>
                                    </div>
                                    <!-- Submit Button-->
                                    <div class="d-grid"><button class="btn btn-primary btn-lg" id="submitButton" type="submit">Enviar</button></div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Information -->
                    <div class="row gx-5 py-5 text-center">
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-clock"></i></div>
                            <div class="h5 mb-2">Horario Laboral</div>
                            <p class="text-muted mb-0">Lunes a Sábados: 10:00 am a 06:00 pm<br>
                                Domingos: 10:00 am a 03:00 pm<br>
                                Festivos: Cerrado
                            </p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question-circle"></i></div>
                            <div class="h5">Centro de ayuda</div>
                            <p class="text-muted mb-0">Encuentra respuestas en nuestro FQA y preguntas frecuentes.</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Llámanos</div>
                            <p class="text-muted mb-0">Llámanos durante el horario laboral al <br>(320) 6800814</p>
                        </div>
                    </div>
                </div>
            </section>

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
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
