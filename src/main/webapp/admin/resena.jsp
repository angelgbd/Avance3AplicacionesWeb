<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Reseña</title>
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

        .contenedor-formulario {
            width: 100%;
            max-width: 800px;
        }

        .info-producto {
            font-size: 16px;
            color: #333;
            margin-bottom: 40px;
        }

        .grupo-input {
            margin-bottom: 30px;
        }

        .grupo-input label {
            display: block;
            font-size: 10px;
            color: #000;
            font-weight: bold;
            letter-spacing: 1px;
            margin-bottom: 15px;
            text-transform: uppercase;
        }

        .cajas-calificacion {
            display: flex;
            gap: 15px;
        }

        .caja-radio {
            flex: 1;
            border: 1px solid #eaeaea;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
        }

        .grupo-input textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #eaeaea;
            outline: none;
            font-size: 14px;
            color: #555;
            resize: vertical;
            font-family: Arial, sans-serif;
        }

        .btn-accion {
            width: 100%;
            padding: 12px;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            cursor: pointer;
            text-align: center;
            display: block;
            text-decoration: none;
            margin-bottom: 10px;
        }

        .btn-enviar {
            background-color: #fff;
            color: #000;
            border: 1px solid #000;
        }

        .btn-cancelar {
            background-color: #fafafa;
            color: #555;
            border: 1px solid #eaeaea;
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
                <div class="titulo-cabecera">CREAR RESEÑA</div>
                <button class="btn" onclick="window.location.href='perfil.html'">Perfil</button>
                <button class="btn" onclick="window.location.href='login.html'">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                <div class="contenedor-formulario">
                    <h1>CREAR RESEÑA</h1>
                    <hr class="linea-titulo">
                    
                    <p class="info-producto">Producto: Smartphone X</p>

                    <form action="detalles.html">
                        
                        <div class="grupo-input">
                            <label>CALIFICACIÓN (1-5)</label>
                            <div class="cajas-calificacion">
                                <label class="caja-radio"><input type="radio" name="calificacion" value="1" required> 1</label>
                                <label class="caja-radio"><input type="radio" name="calificacion" value="2"> 2</label>
                                <label class="caja-radio"><input type="radio" name="calificacion" value="3"> 3</label>
                                <label class="caja-radio"><input type="radio" name="calificacion" value="4"> 4</label>
                                <label class="caja-radio"><input type="radio" name="calificacion" value="5"> 5</label>
                            </div>
                        </div>

                        <div class="grupo-input">
                            <label>COMENTARIO</label>
                            <textarea rows="8" placeholder="Escribe tu opinión sobre el producto" required></textarea>
                        </div>

                        <button type="submit" class="btn-accion btn-enviar">ENVIAR RESEÑA</button>
                        <a href="catalogo.html" class="btn-accion btn-cancelar">CANCELAR</a>

                    </form>
                </div>
            </section>

            <footer class="pie-pagina">
                <p>APLICACIONES WEB – UNIDAD 2</p>
            </footer>

        </main>

    </div>

</body>
</html>