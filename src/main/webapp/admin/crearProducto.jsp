<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Producto - Admin</title>
    <!-- Los estilos CSS se mantienen igual que en la maqueta original -->
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, sans-serif; }
        body { background-color: #1a1a1a; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .contenedor { display: flex; background-color: #ffffff; width: 100%; max-width: 1200px; height: 90vh; border: 1px solid #ccc; }
        .barra-lateral { width: 250px; border-right: 1px solid #eaeaea; padding: 20px; display: flex; flex-direction: column; }
        .barra-lateral h3 { font-size: 14px; letter-spacing: 1px; margin-bottom: 10px; }
        .separador { border: none; border-top: 1px solid #eaeaea; margin: 15px 0; }
        .barra-lateral ul { list-style: none; }
        .barra-lateral li { margin-bottom: 20px; }
        .barra-lateral a { text-decoration: none; color: #000; font-size: 14px; }
        .contenido-principal { flex: 1; display: flex; flex-direction: column; }
        .cabecera { display: flex; align-items: center; padding: 15px 20px; border-bottom: 1px solid #eaeaea; gap: 10px; }
        .titulo-cabecera { margin-right: auto; font-size: 16px; font-weight: bold; }
        .btn { padding: 5px 15px; border: 1px solid #000; background: #fff; cursor: pointer; font-size: 12px; }
        .seccion-contenido { padding: 40px; flex: 1; overflow-y: auto; }
        .contenedor-formulario { width: 100%; max-width: 800px; }
        .contenedor-formulario h1 { font-size: 28px; font-weight: normal; margin-bottom: 5px; text-transform: uppercase; }
        .linea-titulo { border: none; border-top: 2px solid #ccc; width: 50px; margin-bottom: 40px; }
        .grupo-input-completo { width: 100%; margin-bottom: 25px; }
        .fila-formulario { display: flex; gap: 20px; margin-bottom: 25px; }
        .grupo-input { flex: 1; }
        .grupo-input label, .grupo-input-completo label { display: block; font-size: 10px; font-weight: bold; color: #000; letter-spacing: 1px; margin-bottom: 8px; text-transform: uppercase; }
        .grupo-input input, .grupo-input-completo input, .grupo-input-completo textarea { width: 100%; padding: 12px; border: 1px solid #eaeaea; outline: none; font-size: 14px; color: #555; }
        .acciones-formulario { display: flex; align-items: center; gap: 25px; margin-top: 30px; }
        .btn-submit { padding: 12px 30px; background-color: #fff; color: #000; border: 1px solid #000; cursor: pointer; font-size: 11px; font-weight: bold; text-transform: uppercase; }
        .btn-texto { color: #000; font-size: 11px; font-weight: bold; text-decoration: none; text-transform: uppercase; }
        .pie-pagina { padding: 15px; text-align: center; border-top: 1px solid #eaeaea; font-size: 10px; color: #777; }
    </style>
</head>
<body>
    <div class="contenedor">
        <aside class="barra-lateral">
            <h3>ADMINISTRACIÓN</h3>
            <hr class="separador">
            <ul>
                <li><a href="${pageContext.request.contextPath}/admin.jsp">Panel Principal</a></li>
                <li><a href="${pageContext.request.contextPath}/admin_usuarios.jsp">Usuarios</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminProducts" style="font-weight: bold;">Productos</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminOrders">Pedidos</a></li>
                <li><a href="${pageContext.request.contextPath}/AdminReviews">Reseñas</a></li>
            </ul>
        </aside>

        <main class="contenido-principal">
            <header class="cabecera">
                <div class="titulo-cabecera">PANEL DE ADMINISTRACIÓN</div>
                <button class="btn" onclick="window.location.href='${pageContext.request.contextPath}/LogoutServlet'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                <div class="contenedor-formulario">
                    <h1>CREAR NUEVO PRODUCTO</h1>
                    <hr class="linea-titulo">

                    <!-- El formulario apunta al Servlet mediante POST -->
                    <form action="${pageContext.request.contextPath}/AdminProducts" method="POST">
                        <!-- Campo oculto para indicar la acción -->
                        <input type="hidden" name="action" value="insert">
                        
                        <div class="grupo-input-completo">
                            <label>NOMBRE DEL PRODUCTO</label>
                            <input type="text" name="name" required>
                        </div>

                        <div class="grupo-input-completo">
                            <label>DESCRIPCIÓN</label>
                            <textarea rows="4" name="description" required></textarea>
                        </div>

                        <div class="fila-formulario">
                            <div class="grupo-input">
                                <label>PRECIO ($)</label>
                                <input type="number" step="0.01" name="price" required>
                            </div>
                            <div class="grupo-input">
                                <label>CANTIDAD EN STOCK</label>
                                <input type="number" name="stock" required>
                            </div>
                        </div>

                        <div class="acciones-formulario">
                            <button type="submit" class="btn-submit">AÑADIR PRODUCTO</button>
                            <a href="${pageContext.request.contextPath}/AdminProducts" class="btn-texto">CANCELAR</a>
                        </div>
                    </form>
                </div>
            </section>
        </main>
    </div>
</body>
</html>