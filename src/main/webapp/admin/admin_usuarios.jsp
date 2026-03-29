<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administración de Usuarios</title>
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
            font-size: 28px;
            font-weight: normal;
            margin-bottom: 5px;
            text-transform: uppercase;
        }

        .linea-titulo {
            border: none;
            border-top: 2px solid #ccc;
            width: 50px;
            margin-bottom: 40px;
        }

        .tabla-admin {
            width: 100%;
            border-collapse: collapse;
        }

        .tabla-admin th, .tabla-admin td {
            border-bottom: 1px solid #eaeaea;
            padding: 20px 15px;
            text-align: left;
            font-size: 13px;
        }

        .tabla-admin th {
            font-size: 10px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .estado-inactivo {
            color: #999;
        }

        .estado-activo {
            color: #000;
        }

        .celda-acciones {
            display: flex;
            gap: 10px;
        }

        .btn-tabla {
            padding: 6px 12px;
            border: 1px solid #000;
            background-color: #fff;
            color: #000;
            font-size: 9px;
            font-weight: bold;
            cursor: pointer;
            text-transform: uppercase;
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
            <h3>ADMINISTRACIÓN</h3>
            <hr class="separador">
            <ul>
                <li><a href="admin.html">Panel Principal</a></li>
                <li><a href="admin_usuarios.html" style="font-weight: bold;">Usuarios</a></li>
                <li><a href="admin_productos.html">Productos</a></li>
                <li><a href="admin_pedidos.html">Pedidos</a></li>
                <li><a href="admin_resenas.html">Reseñas</a></li>
            </ul>
            <hr class="separador">
            <ul>
                <li><a href="index.html">Ver Tienda</a></li>
                <li><a href="login.html">Cerrar Sesión</a></li>
            </ul>
        </aside>

        <main class="contenido-principal">
            
            <header class="cabecera">
                <div class="titulo-cabecera">PANEL DE ADMINISTRACIÓN</div>
                <button class="btn">Perfil Admin</button>
                <button class="btn" onclick="window.location.href='login.html'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                
                <h1>ADMINISTRACIÓN DE USUARIOS</h1>
                <hr class="linea-titulo">

                <table class="tabla-admin">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CORREO ELECTRÓNICO</th>
                            <th>ESTADO DE CUENTA</th>
                            <th>FECHA DE REGISTRO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Juan Pérez</td>
                            <td>juan.perez@ejemplo.com</td>
                            <td class="estado-activo">ACTIVO</td>
                            <td>2023-05-15</td>
                            <td class="celda-acciones">
                                <button class="btn-tabla">CAMBIAR ESTADO</button>
                                <button class="btn-tabla">ELIMINAR</button>
                            </td>
                        </tr>
                        <tr>
                            <td>María García</td>
                            <td>m.garcia@dominio.com</td>
                            <td class="estado-inactivo">INACTIVO</td>
                            <td>2023-08-22</td>
                            <td class="celda-acciones">
                                <button class="btn-tabla">CAMBIAR ESTADO</button>
                                <button class="btn-tabla">ELIMINAR</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Carlos López</td>
                            <td>carlos_admin@portal.net</td>
                            <td class="estado-activo">ACTIVO</td>
                            <td>2024-01-10</td>
                            <td class="celda-acciones">
                                <button class="btn-tabla">CAMBIAR ESTADO</button>
                                <button class="btn-tabla">ELIMINAR</button>
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