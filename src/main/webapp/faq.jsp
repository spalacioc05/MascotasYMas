<%-- 
    Document   : faq
    Created on : 22/11/2024, 6:50:17 p. m.
    Author     : spala
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FQA - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
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
            <!-- Contenido de la Página-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Preguntas Frecuentes</h1>
                        <p class="lead fw-normal text-muted mb-0">¿En qué podemos ayudarte?</p>
                    </div>
                    <div class="row gx-5">
                        <div class="col-xl-8">

                            <!-- Accordion FAQ 2 -->
                            <h2 class="fw-bolder mb-3">Problemas en el Sitio Web</h2>
                            <div class="accordion mb-5" id="accordionSitioWeb">
                                <div class="accordion-item">
                                    <h3 class="accordion-header" id="headingSitioWeb1">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSitioWeb1" aria-expanded="true" aria-controls="collapseSitioWeb1">
                                            No puedo iniciar sesión. ¿Qué debo hacer?
                                        </button>
                                    </h3>
                                    <div class="accordion-collapse collapse show" id="collapseSitioWeb1" aria-labelledby="headingSitioWeb1" data-bs-parent="#accordionSitioWeb">
                                        <div class="accordion-body">
                                            Si tienes problemas para iniciar sesión, verifica que tu correo y contraseña sean correctos.
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-header" id="headingSitioWeb2">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSitioWeb2" aria-expanded="false" aria-controls="collapseSitioWeb2">
                                            ¿Cómo informo de un error en la página?
                                        </button>
                                    </h3>
                                    <div class="accordion-collapse collapse" id="collapseSitioWeb2" aria-labelledby="headingSitioWeb2" data-bs-parent="#accordionSitioWeb">
                                        <div class="accordion-body">
                                            Puedes informarnos sobre cualquier error en nuestro sitio web contactando a nuestro equipo de soporte en <a href="mailto:soporte@mascotasymas.com">soporte@mascotasymas.com</a>.
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-header" id="headingSitioWeb3">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSitioWeb3" aria-expanded="false" aria-controls="collapseSitioWeb3">
                                            ¿Puedo realizar un pedido desde mi dispositivo móvil?
                                        </button>
                                    </h3>
                                    <div class="accordion-collapse collapse" id="collapseSitioWeb3" aria-labelledby="headingSitioWeb3" data-bs-parent="#accordionSitioWeb">
                                        <div class="accordion-body">
                                            Sí, nuestro sitio web está optimizado para dispositivos móviles, lo que te permite navegar y comprar desde tu teléfono o tablet fácilmente.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4">
                            <div class="card border-0 bg-light mt-xl-5">
                                <div class="card-body p-4 py-lg-5">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <div class="text-center">
                                            <div class="h6 fw-bolder">¿Tienes más preguntas?</div>
                                                <p class="text-muted mb-4">
                                                    Contáctanos en
                                                    <br />
                                                    <a href="contact.jsp">Nuestra página de contacto</a>
                                                </p>

                                            <div class="h6 fw-bolder">Síguenos</div>
                                            <a class="fs-5 px-2 link-dark" href="#!"><i class="bi-twitter"></i></a>
                                            <a class="fs-5 px-2 link-dark" href="#!"><i class="bi-facebook"></i></a>
                                            <a class="fs-5 px-2 link-dark" href="#!"><i class="bi-linkedin"></i></a>
                                            <a class="fs-5 px-2 link-dark" href="#!"><i class="bi-youtube"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
