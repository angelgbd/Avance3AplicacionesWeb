<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proceso de Compra</title>
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

        .contenedor-pago {
            max-width: 800px;
        }

        .subtitulo {
            font-size: 11px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 15px;
            margin-top: 30px;
        }

        .caja-info {
            border: 1px solid #eaeaea;
            padding: 20px;
            font-size: 14px;
            color: #333;
            line-height: 1.5;
            background-color: #fafafa;
        }

        .tabla-resumen {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #eaeaea;
        }

        .tabla-resumen th, .tabla-resumen td {
            border-bottom: 1px solid #eaeaea;
            padding: 15px;
            text-align: left;
            font-size: 13px;
        }

        .tabla-resumen th {
            font-size: 10px;
            font-weight: bold;
            text-transform: uppercase;
            background-color: #fafafa;
            border-top: 1px solid #eaeaea;
        }

        .opcion-pago {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border: 1px solid #eaeaea;
            padding: 20px;
            margin-bottom: 10px;
            cursor: pointer;
            font-size: 14px;
            transition: border-color 0.2s;
        }

        .opcion-pago:hover {
            border-color: #000;
        }

        .opcion-pago input[type="radio"] {
            margin-right: 15px;
        }

        .opcion-pago-izquierda {
            display: flex;
            align-items: center;
        }

        .icono-pago {
            font-size: 18px;
            color: #555;
        }

        .seccion-final {
            margin-top: 40px;
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            border-top: 2px solid #eaeaea;
            padding-top: 20px;
        }

        .caja-total {
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 20px;
            display: flex;
            gap: 50px;
        }

        .btn-generar {
            padding: 15px 40px;
            background-color: #000;
            color: #fff;
            border: none;
            cursor: pointer;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            text-decoration: none;
            text-transform: uppercase;
            display: inline-block;
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
                <div class="titulo-cabecera">PROCESO DE COMPRA</div>
                <button class="btn" onclick="window.location.href='perfil.html'">Perfil</button>
                <button class="btn" onclick="window.location.href='login.html'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                
                <div class="contenedor-pago">
                    <h1>PROCESO DE COMPRA</h1>
                    <hr class="linea-titulo">

                    <h3 class="subtitulo">DELIVERY ADDRESS</h3>
                    <div class="caja-info">
                        <strong>Calle Reforma 123</strong><br>
                        Colonia Centro, Ciudad de México, 06000<br>
                        México
                    </div>

                    <h3 class="subtitulo">ORDER SUMMARY</h3>
                    <table class="tabla-resumen">
                        <thead>
                            <tr>
                                <th>PRODUCT NAME</th>
                                <th>PRICE</th>
                                <th>QUANTITY</th>
                                <th>SUBTOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Laptop Pro 14"</td>
                                <td>$1,200.00</td>
                                <td>1</td>
                                <td>$1,200.00</td>
                            </tr>
                            <tr>
                                <td>Wireless Mouse</td>
                                <td>$25.00</td>
                                <td>2</td>
                                <td>$50.00</td>
                            </tr>
                        </tbody>
                    </table>

                    <h3 class="subtitulo">PAYMENT OPTIONS</h3>
                    <div class="opciones-pago">
                        <label class="opcion-pago">
                            <div class="opcion-pago-izquierda">
                                <input type="radio" name="metodo_pago" checked>
                                Credit Card
                            </div>
                            <span class="icono-pago"></span>
                        </label>
                        <label class="opcion-pago">
                            <div class="opcion-pago-izquierda">
                                <input type="radio" name="metodo_pago">
                                PayPal
                            </div>
                            <span class="icono-pago">🅿</span>
                        </label>
                        <label class="opcion-pago">
                            <div class="opcion-pago-izquierda">
                                <input type="radio" name="metodo_pago">
                                Bank Transfer
                            </div>
                            <span class="icono-pago"></span>
                        </label>
                    </div>

                    <div class="seccion-final">
                        <div class="caja-total">
                            <span>TOTAL COST</span>
                            <span>$1,250.00</span>
                        </div>
                        <a href="confirmacion.html" class="btn-generar">GENERAR PEDIDO</a>
                    </div>

                </div>

            </section>

            <footer class="pie-pagina">
                <p>APLICACIONES WEB – UNIDAD 2</p>
            </footer>

        </main>

    </div>

</body>
</html>