<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="com.spalacioc.mascotasymas.dao.ProductoDAO"%>
<%@page import="com.spalacioc.mascotasymas.model.Producto"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto - MASCOTAS & MÁS</title>
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
            <!-- Product section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">
                        <%
                            int sku = Integer.parseInt(request.getParameter("sku"));
                            ProductoDAO productoDAO = new ProductoDAO();
                            Producto producto = productoDAO.obtenerProductoPorSku(sku);
                        %>
                        <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(producto.getImagen()) %>" alt="Product Image" id="productImage" /></div>
                        <div class="col-md-6">
                            <div class="small mb-1" id="csku">SKU: <%= producto.getSku() %></div>
                            <div class="small mb-1" id="codigoBarras">Codigo de barras: <%= producto.getCodigoBarras() %></div>
                            <h1 class="display-5 fw-bolder" id="productName"><%= producto.getNombre() %></h1>
                            <div class="fs-5 mb-2">
                                <span id="productPrice">$<%= producto.getPrecio() %></span>
                            </div>

                                <p class="lead" id="productDescription"><%= producto.getDescripcion() %></p>
                                <p class="small mb-1" id="productBrand">Marca: <%= producto.getMarca() %></p>
                                <p class="small mb-1" id="productWeight">Peso: <%= producto.getPeso() %></p>

                            <div class="col-md-6 mt-3">
                                <a class="btn btn-primary w-auto" href="contact.jsp">Contactanos</a>
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
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="contact.jsp">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>