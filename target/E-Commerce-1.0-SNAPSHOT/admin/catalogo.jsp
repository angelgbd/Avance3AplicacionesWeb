<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo de Productos</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #1a1a1a;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .contenedor {
            display: flex;
            background-color: #ffffff;
            width: 100%;
            max-width: 1200px;
            height: 90vh;
            border: 1px solid #ccc;
        }

        .barra-lateral {
            width: 250px;
            border-right: 1px solid #eaeaea;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }

        .barra-lateral h3 {
            font-size: 14px;
            letter-spacing: 1px;
            margin-bottom: 10px;
        }

        .separador {
            border: none;
            border-top: 1px solid #eaeaea;
            margin: 15px 0;
        }

        .barra-lateral ul {
            list-style: none;
        }

        .barra-lateral li {
            margin-bottom: 20px;
        }

        .barra-lateral a {
            text-decoration: none;
            color: #000;
            font-size: 14px;
        }

        .contenido-principal {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .cabecera {
            display: flex;
            align-items: center;
            padding: 15px 20px;
            border-bottom: 1px solid #eaeaea;
            gap: 10px;
        }

        .titulo-cabecera {
            margin-right: auto;
            font-size: 16px;
            font-weight: bold;
        }

        .btn {
            padding: 5px 15px;
            border: 1px solid #000;
            background: #fff;
            cursor: pointer;
            font-size: 12px;
        }

        .seccion-contenido {
            padding: 40px;
            flex: 1;
            overflow-y: auto;
        }

        .seccion-contenido h1 {
            font-size: 24px;
            font-weight: normal;
            margin-bottom: 5px;
        }

        .linea-titulo {
            border: none;
            border-top: 2px solid #ccc;
            width: 40px;
            margin-bottom: 30px;
        }

        .caja-filtros {
            border: 1px solid #eaeaea;
            padding: 20px;
            margin-bottom: 30px;
        }

        .titulo-filtros {
            font-size: 12px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .fila-filtros {
            display: flex;
            gap: 30px;
            align-items: flex-start;
        }

        .grupo-filtro {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .grupo-filtro label {
            font-size: 10px;
            font-weight: bold;
            margin-bottom: 8px;
            text-transform: uppercase;
        }

        .grupo-filtro input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            outline: none;
            font-size: 13px;
        }

        .opciones-radio {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }

        .opcion-radio {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 13px;
        }

        .tabla-productos {
            width: 100%;
            border-collapse: collapse;
        }

        .tabla-productos th, .tabla-productos td {
            border: 1px solid #eaeaea;
            padding: 15px;
            text-align: left;
            font-size: 13px;
        }

        .tabla-productos th {
            font-size: 10px;
            font-weight: bold;
            text-transform: uppercase;
            background-color: #fafafa;
        }

        .celda-acciones {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .link-detalle {
            color: #000;
            font-weight: bold;
            text-decoration: underline;
            font-size: 12px;
        }

        .btn-accion {
            padding: 6px 12px;
            background-color: #fff;
            color: #000;
            border: 1px solid #000;
            cursor: pointer;
            font-size: 11px;
            font-weight: bold;
        }

        .btn-secundario {
            border: 1px solid #ccc;
            color: #555;
            font-weight: normal;
        }

        .pie-pagina {
            padding: 15px;
            text-align: center;
            border-top: 1px solid #eaeaea;
            font-size: 10px;
            letter-spacing: 1px;
            color: #777;
        }
    </style>
</head>
<body>

    <div class="contenedor">
        
        <aside class="barra-lateral">
            <h3>NAVEGACIÓN</h3>
            <hr class="separador">
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="catalogo.html">Catálogo</a></li>
                <li><a href="carrito.html">Carrito</a></li>
                <li><a href="pedidos.html">Mis Pedidos</a></li>
                <li><a href="admin.html">Administrador</a></li>
            </ul>
            <hr class="separador">
            <ul>
                <li><a href="login.html">Iniciar Sesión</a></li>
            </ul>
        </aside>

        <main class="contenido-principal">
            
            <header class="cabecera">
                <div class="titulo-cabecera">CATÁLOGO DE PRODUCTOS</div>
                <button class="btn" onclick="window.location.href='perfil.html'">Perfil</button>
                <button class="btn" onclick="window.location.href='login.html'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                <h1>CATÁLOGO DE PRODUCTOS</h1>
                <hr class="linea-titulo">

                <div class="caja-filtros">
                    <div class="titulo-filtros">FILTROS DE BÚSQUEDA</div>
                    <div class="fila-filtros">
                        <div class="grupo-filtro">
                            <label>BUSCAR POR NOMBRE</label>
                            <input type="text" placeholder="Ej: Smartphone...">
                        </div>
                        <div class="grupo-filtro">
                            <label>RANGO DE PRECIO</label>
                            <input type="text" placeholder="0.00">
                        </div>
                        <div class="grupo-filtro">
                            <label>ORDEN DE PRECIO</label>
                            <div class="opciones-radio">
                                <label class="opcion-radio">
                                    <input type="radio" name="orden_precio"> Menor que
                                </label>
                                <label class="opcion-radio">
                                    <input type="radio" name="orden_precio"> Mayor que
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <table class="tabla-productos">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>PRECIO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Laptop Pro 16"</td>
                            <td>$1,299.00</td>
                            <td class="celda-acciones">
                                <a href="detalles.html" class="link-detalle">Detalles del producto</a>
                                <button class="btn-accion">Agregar al Carrito</button>
                                <button class="btn-accion btn-secundario">Dejar Reseña</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Smartphone X-200</td>
                            <td>$799.00</td>
                            <td class="celda-acciones">
                                <a href="detalles.html" class="link-detalle">Detalles del producto</a>
                                <button class="btn-accion">Agregar al Carrito</button>
                                <button class="btn-accion btn-secundario">Dejar Reseña</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Auriculares Wireless</td>
                            <td>$149.50</td>
                            <td class="celda-acciones">
                                <a href="detalles.html" class="link-detalle">Detalles del producto</a>
                                <button class="btn-accion">Agregar al Carrito</button>
                                <button class="btn-accion btn-secundario">Dejar Reseña</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Monitor UltraWide 34"</td>
                            <td>$450.00</td>
                            <td class="celda-acciones">
                                <a href="detalles.html" class="link-detalle">Detalles del producto</a>
                                <button class="btn-accion">Agregar al Carrito</button>
                                <button class="btn-accion btn-secundario">Dejar Reseña</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </section>

            <footer class="pie-pagina">
                <p>APLICACIONES WEB – UNIDAD 2</p>
            </footer>

        </main>

    </div>

</body>
</html>