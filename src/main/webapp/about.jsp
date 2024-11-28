<%-- 
    Document   : about
    Created on : 22/11/2024, 6:49:42 p. m.
    Author     : spala
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre nosotros - MASCOTAS & MÁS</title>
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
            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">Amamos a los animales y trabajamos para su bienestar</h1>
                                <p class="lead fw-normal text-muted mb-4">En <b>Mascotas & Más</b>, nuestra pasión es asegurar la felicidad y salud de tus compañeros peludos con los mejores productos y atención personalizada.</p>
                                <a class="btn btn-primary btn-lg" href="#about-section">Conoce nuestra historia</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- About section one - Historia y Motivación -->
            <section class="py-5 bg-light" id="about-section">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="assets/img/manchitas.jpg" alt="Nuestro equipo en acción" /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">Nuestra Historia</h2>
                            <p class="lead fw-normal text-muted mb-0"><b>Mascotas & Más</b> nació de un amor profundo por los animales y el deseo de ofrecer todo lo necesario para su cuidado. Desde alimentos de calidad hasta medicinas y juguetes, estamos comprometidos en asegurar la felicidad de las mascotas y la satisfacción de sus dueños.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- About section two - Misión y Visión -->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="assets/img/tarjeta.png" alt="..." /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">Nuestra Misión y Visión</h2>
                            <p class="lead fw-normal text-muted mb-0"><strong>Misión:</strong> Ser el lugar de confianza para cada dueño de mascota, proporcionando productos y servicios de calidad que garanticen la salud y el bienestar de cada animal.</p>
                            <p class="lead fw-normal text-muted mb-0"><strong>Visión:</strong> Convertirnos en un referente regional de productos para mascotas y, en el futuro, expandir nuestro alcance para servir a más familias y sus mascotas en Colombia.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Products and Services section -->
            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="assets/img/productos.png" alt="Productos para mascotas" /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">Productos y Servicios</h2>
                            <p class="lead fw-normal text-muted mb-0">Desde alimentos de alta calidad hasta juguetes, artículos de aseo y medicamentos, ofrecemos una amplia gama de productos que cubren todas las necesidades de tu mascota.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Core Values section -->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="assets/img/tina.jpg" alt="Valores de Mascotas & Más" /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">Nuestros Valores</h2>
                            <p class="lead fw-normal text-muted mb-0">Nos guiamos por el respeto, la responsabilidad y la empatía hacia todos los animales y sus dueños. Estos valores son el corazón de todo lo que hacemos en <b>Mascotas & Más</b>.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Map section -->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="text-center">
                        <h2 class="fw-bolder">Ubicación</h2>
                        <p class="lead fw-normal text-muted mb-5">Visítanos en nuestra sede física en Valdivia, Antioquia, y encuentra todo lo que necesitas para el bienestar de tu mascota. Estamos ubicados en la <b>Plaza Principal Cra 10 #9-30 Local 3 Valdivia - Ant.</b></p>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <iframe class="w-100 rounded" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d308.3040352112265!2d-75.43866933195551!3d7.164961894068202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1ses-419!2sco!4v1731620813592!5m2!1ses-419!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
    </body>
</html>
