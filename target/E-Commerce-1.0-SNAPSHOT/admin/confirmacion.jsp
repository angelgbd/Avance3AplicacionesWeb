<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmación de Compra</title>
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
            margin-bottom: 30px;
        }

        .mensaje-exito {
            font-size: 14px;
            color: #555;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 40px;
        }

        .separador-seccion {
            border: none;
            border-top: 1px solid #eaeaea;
            margin: 30px 0;
            width: 100%;
            max-width: 800px;
        }

        .contenedor-detalles {
            max-width: 800px;
        }

        .fila-datos {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            margin-bottom: 30px;
        }

        .grupo-dato {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .etiqueta-dato {
            font-size: 10px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #000;
        }

        .valor-dato {
            font-size: 16px;
            color: #333;
        }

        .valor-direccion {
            font-size: 14px;
            line-height: 1.5;
            color: #555;
        }

        .valor-total {
            font-size: 24px;
            font-weight: bold;
            color: #000;
        }

        .btn-regresar {
            padding: 15px 40px;
            background-color: #fff;
            color: #000;
            border: 1px solid #000;
            cursor: pointer;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            text-decoration: none;
            text-transform: uppercase;
            display: inline-block;
            margin-top: 20px;
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
                <div class="titulo-cabecera">CONFIRMACIÓN DE COMPRA</div>
                <button class="btn" onclick="window.location.href='perfil.html'">Perfil</button>
                <button class="btn" onclick="window.location.href='login.html'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                <h1>CONFIRMACIÓN DE COMPRA</h1>
                <hr class="linea-titulo">

                <div class="contenedor-detalles">
                    
                    <p class="mensaje-exito">GRACIAS POR TU COMPRA. TU PEDIDO HA SIDO PROCESADO EXITOSAMENTE.</p>
                    
                    <hr class="separador-seccion">

                    <div class="fila-datos">
                        <div class="grupo-dato">
                            <span class="etiqueta-dato">NÚMERO DE PEDIDO</span>
                            <span class="valor-dato">#12345</span>
                        </div>
                        <div class="grupo-dato">
                            <span class="etiqueta-dato">FECHA DE COMPRA</span>
                            <span class="valor-dato">24 de Mayo, 2024</span>
                        </div>
                    </div>

                    <div class="grupo-dato" style="margin-bottom: 30px;">
                        <span class="etiqueta-dato">DIRECCIÓN DE ENVÍO</span>
                        <span class="valor-direccion">
                            Calle tesopaco, Colonia villa california,<br>
                            obregon, 08685
                        </span>
                    </div>

                    <div class="grupo-dato">
                        <span class="etiqueta-dato">COSTO TOTAL</span>
                        <span class="valor-total">$1,250.00</span>
                    </div>

                    <hr class="separador-seccion">

                    <a href="index.html" class="btn-regresar">REGRESAR AL INICIO</a>

                </div>

            </section>

            <footer class="pie-pagina">
                <p>APLICACIONES WEB – UNIDAD 2</p>
            </footer>

        </main>

    </div>

</body>
</html>