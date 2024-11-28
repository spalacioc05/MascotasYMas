<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.Collections"%>
<%@page import="com.spalacioc.mascotasymas.dao.ProductoDAO"%>
<%@page import="com.spalacioc.mascotasymas.model.Producto"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
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
                <div class="container px-4 px-lg-5 my-5">
                    <div class="text-center text-white">
                        <h1 class="display-4 fw-bolder">Productos para Todas las Mascotas</h1>
                        <p class="lead fw-normal text-white-50 mb-0">Encuentra todo lo que necesitas para el bienestar de tu mascota</p>
                    </div>
                </div>
            </header>

            <!-- Filter Buttons -->
            <div class="filter-buttons mb-4 text-center">
                <button class="btn btn-outline-dark" data-category="todos">Todos</button>
                <button class="btn btn-outline-dark" data-category="Comida">Comida</button>
                <button class="btn btn-outline-dark" data-category="Accesorios">Accesorios</button>
                <button class="btn btn-outline-dark" data-category="Juguetes">Juguetes</button>
                <button class="btn btn-outline-dark" data-category="Higiene">Higiene</button>
                <button class="btn btn-outline-dark" data-category="Salud">Salud</button>
                <button class="btn btn-outline-dark" data-category="Viaje">Viaje</button>
            </div>
            
            <!-- Products Section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                        <%
                            ProductoDAO productoDAO = new ProductoDAO();
                            List<Producto> productos = productoDAO.obtenerTodosLosProductos();
                            Collections.shuffle(productos); // Mezcla la lista de productos
                            for (Producto producto : productos) {
                        %>
                        <div class="col mb-5 product" data-category="<%= producto.getCategoria() %>">
                            <div class="card h-100">
                                <img class="card-img-top" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(producto.getImagen()) %>" alt="Product Image"/>
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <h5 class="fw-bolder"><%= producto.getNombre() %></h5>
                                        <p>$<%= producto.getPrecio() %></p>
                                    </div>
                                </div>
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="producto.jsp?sku=<%= producto.getSku() %>">Ver más</a></div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
                <!-- Products Section-->
                <div class="container px-4 px-lg-5 mt-5">
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center" id="product-container">
                        <%-- Existing product rendering code --%>
                    </div>
                    <!-- Pagination Controls -->
                    <div class="pagination-controls text-center mt-4">
                        <button class="btn btn-outline-dark3" id="prev-page">Anterior</button>
                        <span id="page-info" class="mx-2"></span>
                        <button class="btn btn-outline-dark3" id="next-page">Siguiente</button>
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
        <script src="js/filter.js"></script>
        <script src="js/pagination.js"></script>
    </body>
</html>