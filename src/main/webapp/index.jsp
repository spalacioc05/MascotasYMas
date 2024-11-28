<%-- 
    Document   : index
    Created on : 22/11/2024, 6:02:57 p. m.
    Author     : spala
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MASCOTAS & MÁS</title>
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
            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">Bienvenidos a Mascotas & Más</h1>
                                <p class="lead fw-normal text-white-50 mb-4">El lugar donde encuentras todo lo que tu mascota necesita. Desde alimentos nutritivos hasta los mejores accesorios, juguetes y productos de cuidado. En Mascotas & Más, cuidamos a tu mascota como si fuera nuestra, ofreciéndote productos de alta calidad a precios que cuidan tu bolsillo. ¡Descubre nuestra tienda y haz feliz a tu mejor amigo hoy!</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Comenzar</a>
                                    <a class="btn btn-outline-light btn-lg px-4" href="about.jsp">Más información</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="assets/img/inicio.png" alt="..." /></div>
                    </div>
                </div>
            </header>
            <!-- Sección de Características -->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <h2 class="fw-bolder mb-0">Todo para el bienestar de tus mascotas</h2>
                        </div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-basket3"></i>
                                    </div>
                                    <h2 class="h5">Productos de Calidad</h2>
                                    <p class="mb-0">Encuentra los mejores alimentos, juguetes, y productos para el cuidado de tus mascotas, seleccionados cuidadosamente para su bienestar.</p>
                                </div>

                                <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                    <h2 class="h5">Marcas Confiables</h2>
                                    <p class="mb-0">Ofrecemos productos de las marcas más reconocidas en el cuidado y alimentación de mascotas, con garantía de calidad y seguridad.</p>
                                </div>
                                <div class="col h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-people"></i>
                                    </div>
                                    <h2 class="h5">Atención Personalizada</h2>
                                    <p class="mb-0">Nuestro equipo está aquí para ayudarte con cualquier duda o recomendación. ¡Tu mascota es nuestra prioridad!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Sección de Testimonios -->
            <div class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">"Comprar en Mascotas & Más ha sido una excelente experiencia. Encuentro todo lo que mi mascota necesita, y el envío es rápido y confiable. ¡Mis mascotas están felices y yo también!"</div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="Cliente satisfecho" />
                                    <div class="fw-bold">
                                        María Gómez
                                        <span class="fw-bold text-primary mx-1">/</span>
                                        Cliente frecuente
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Llamada a la acción-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <aside class="bg-primary bg-gradient rounded-3 p-4 p-sm-5 mt-5">
                        <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start">
                            <div class="mb-4 mb-xl-0">
                                <div class="fs-3 fw-bold text-white">Nuevos productos.</div>
                                <div class="text-white-50">Regístrate a nuestro boletín para recibir las últimas actualizaciones.</div>
                            </div>
                            <div class="ms-xl-4">
                                <div class="input-group mb-2">
                                    <input class="form-control" type="text" placeholder="Dirección de correo electrónico..." aria-label="Dirección de correo electrónico..." aria-describedby="button-newsletter" />
                                    <button class="btn btn-outline-light" id="button-newsletter" type="button" onclick="window.location.href='registro.jsp'">Regístrate</button>
                                </div>
                                <div class="small text-white-50">Nos importa la privacidad y nunca compartiremos tus datos.</div>
                            </div>
                        </div>
                    </aside>
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
