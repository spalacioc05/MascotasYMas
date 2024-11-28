<%@page import="com.spalacioc.mascotasymas.dao.ProductoDAO"%>
<%@page import="com.spalacioc.mascotasymas.model.Producto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar productos - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/gestionarProductos.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">MASCOTAS & MÁS - ADMININISTRADOR</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="gestionarProductos.jsp">Productos</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPerfil" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-person"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPerfil">
                                    <li><a class="dropdown-item" href="perfilAdmin.jsp">Perfil</a></li>
                                    <li><a class="dropdown-item" href="index.jsp">Vista de Usuario</a></li>
                                    <li><a class="dropdown-item" href="login.jsp">Iniciar sesión</a></li>
                                    <li><a class="dropdown-item" href="LogoutServlet">Cerrar sesión</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-6">
                            <div class="text-center mb-5">
                                <h1 class="fw-bolder">Gestionar productos</h1>
                                <p class="lead fw-normal text-muted mb-0">Este apartado te permitirá mantener un control claro y actualizado de los productos, asegurando una experiencia óptima para los clientes.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Botón para abrir el formulario modal -->
                    <div class="mb-3">
                        <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#agregarProductoModal">Agregar</button>
                    </div>
                    
                    <!-- Formulario Modal -->
                    <div class="modal fade" id="agregarProductoModal" tabindex="-1" aria-labelledby="agregarProductoModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="AgregarProductoServlet" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="agregarProductoModalLabel">Agregar Producto</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <label for="sku" class="form-label">SKU</label>
                                            <input type="number" class="form-control" id="sku" name="sku" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="nombre" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="descripcion" class="form-label">Descripción</label>
                                            <textarea class="form-control" id="descripcion" name="descripcion" required></textarea>
                                        </div>
                                        <div class="mb-3">
                                            <label for="codigoBarras" class="form-label">Código de Barras</label>
                                            <input type="text" class="form-control" id="codigoBarras" name="codigoBarras" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="categoria" class="form-label">Categoría</label>
                                            <select class="form-select" id="categoria" name="categoria" required>
                                                <option value="Comida">Comida</option>
                                                <option value="Accesorios">Accesorios</option>
                                                <option value="Juguetes">Juguetes</option>
                                                <option value="Higiene">Higiene</option>
                                                <option value="Salud">Salud</option>
                                                <option value="Viaje">Viaje</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="marca" class="form-label">Marca</label>
                                            <input type="text" class="form-control" id="marca" name="marca" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="precio" class="form-label">Precio</label>
                                            <input type="number" step="0.01" class="form-control" id="precio" name="precio" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="peso" class="form-label">Peso</label>
                                            <input type="text" class="form-control" id="peso" name="peso" required>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-primary">Agregar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Campo de búsqueda -->
                    <div class="mb-3">
                        <input type="text" class="form-control" id="buscarProducto" placeholder="Buscar...">
                    </div>
                    <!-- Tabla de productos-->
                    <div class="table-responsive">
                        <table id="productosTabla" class="table table-striped">
                            <thead>
                            <tr>
                                <th>SKU</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Código de Barras</th>
                                <th>Categoría</th>
                                <th>Marca</th>
                                <th>Precio</th>
                                <th>Peso</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                ProductoDAO productoDAO = new ProductoDAO();
                                List<Producto> productos = productoDAO.obtenerTodosLosProductos();
                                for (Producto producto : productos) {
                            %>
                            <tr>
                                <td><%= producto.getSku() %></td>
                                <td><%= producto.getNombre() %></td>
                                <td><%= producto.getDescripcion() %></td>
                                <td><%= producto.getCodigoBarras() %></td>
                                <td><%= producto.getCategoria() %></td>
                                <td><%= producto.getMarca() %></td>
                                <td><%= producto.getPrecio() %></td>
                                <td><%= producto.getPeso() %></td>
                                <td><button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#editarProductoModal" onclick="llenarFormularioEditar('<%= producto.getSku() %>')">Editar</button></td>
                                <td><button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#confirmarEliminarModal" onclick="confirmarEliminar('<%= producto.getSku() %>')">Eliminar</button></td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>

                        <!-- Formulario Modal de Editar -->
                        <div class="modal fade" id="editarProductoModal" tabindex="-1" aria-labelledby="editarProductoModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="EditarProductoServlet" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="editarProductoModalLabel">Editar Producto</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <input type="hidden" id="editarSku" name="sku">
                                            <div class="mb-3">
                                                <label for="editarNombre" class="form-label">Nombre</label>
                                                <input type="text" class="form-control" id="editarNombre" name="nombre" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarDescripcion" class="form-label">Descripción</label>
                                                <textarea class="form-control" id="editarDescripcion" name="descripcion" required></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarCodigoBarras" class="form-label">Código de Barras</label>
                                                <input type="text" class="form-control" id="editarCodigoBarras" name="codigoBarras" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarCategoria" class="form-label">Categoría</label>
                                                <select class="form-select" id="editarCategoria" name="categoria" required>
                                                    <option value="Comida">Comida</option>
                                                    <option value="Accesorios">Accesorios</option>
                                                    <option value="Juguetes">Juguetes</option>
                                                    <option value="Higiene">Higiene</option>
                                                    <option value="Salud">Salud</option>
                                                    <option value="Viaje">Viaje</option>
                                                </select>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarMarca" class="form-label">Marca</label>
                                                <input type="text" class="form-control" id="editarMarca" name="marca" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarPrecio" class="form-label">Precio</label>
                                                <input type="number" step="0.01" class="form-control" id="editarPrecio" name="precio" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="editarPeso" class="form-label">Peso</label>
                                                <input type="text" class="form-control" id="editarPeso" name="peso" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <button type="submit" class="btn btn-primary">Editar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <!-- Modal de Confirmación de Eliminación -->
                        <div class="modal fade" id="confirmarEliminarModal" tabindex="-1" aria-labelledby="confirmarEliminarModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="confirmarEliminarModalLabel">Confirmar Eliminación</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ¿Está seguro de que desea eliminar este producto?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-danger" onclick="eliminarProducto()">Eliminar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Paginación -->
                    <div class="d-flex justify-content-between align-items-center mt-3">
                        <div>
                            <label for="productosPorPagina" class="form-label">Productos por página:</label>
                            <select class="form-select" id="productosPorPagina" style="width: auto; display: inline-block;">
                                <option value="10">10</option>
                                <option value="30">20</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="200">200</option>
                            </select>
                        </div>
                        <nav>
                            <ul class="pagination mb-0">
                                <li class="page-item">
                                    <a class="page-link" href="#" id="prevPage">Anterior</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" id="nextPage">Siguiente</a>
                                </li>
                            </ul>
                        </nav>
                        <div id="page-info" class="text-muted"></div>
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
        <script src="js/buscarProducto.js"></script>
        <script src="js/paginacion.js"></script>
        <script src="js/editarProducto.js"></script>
        <script src="js/eliminarProducto.js"></script>
    </body>
</html>