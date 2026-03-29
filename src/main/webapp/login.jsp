<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
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
            justify-content: flex-end;
            padding: 15px 20px;
            border-bottom: 1px solid #eaeaea;
            gap: 10px;
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
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .contenedor-formulario {
            width: 100%;
            max-width: 400px;
        }

        .contenedor-formulario h1 {
            font-size: 24px;
            font-weight: normal;
            margin-bottom: 5px;
            text-align: left;
        }

        .linea-titulo {
            border: none;
            border-top: 2px solid #ccc;
            width: 40px;
            margin-bottom: 30px;
        }

        .grupo-input {
            margin-bottom: 20px;
        }

        .grupo-input label {
            display: block;
            font-size: 10px;
            color: #777;
            letter-spacing: 1px;
            margin-bottom: 5px;
            text-transform: uppercase;
        }

        .grupo-input input {
            width: 100%;
            padding: 10px;
            border: 1px solid #eaeaea;
            outline: none;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #fff;
            color: #000;
            border: 1px solid #000;
            cursor: pointer;
            font-size: 12px;
            letter-spacing: 1px;
            margin-top: 10px;
            margin-bottom: 25px;
        }

        .enlaces-login {
            text-align: center;
            font-size: 12px;
            color: #777;
        }

        .enlaces-login a {
            color: #000;
            text-decoration: none;
        }

        .enlaces-login a.subrayado {
            text-decoration: underline;
        }

        .enlace-regreso {
            display: block;
            margin-top: 15px;
            font-size: 10px;
            letter-spacing: 1px;
            color: #999 !important;
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
                <button class="btn">Perfil</button>
                <button class="btn">Cerrar Sesión</button>
            </header>

            <section class="seccion-contenido">
                <div class="contenedor-formulario">
                    <h1>INICIO DE SESIÓN</h1>
                    <hr class="linea-titulo">
                    
                    <form action="index.html">
                        <div class="grupo-input">
                            <label>CORREO ELECTRÓNICO</label>
                            <input type="email" required>
                        </div>
                        
                        <div class="grupo-input">
                            <label>CONTRASEÑA</label>
                            <input type="password" required>
                        </div>
                        
                        <button type="submit" class="btn-submit">INICIAR SESIÓN</button>
                    </form>

                    <div class="enlaces-login">
                        <p>¿No tienes cuenta? <a href="registro.html" class="subrayado">Registrarse</a></p>
                        <a href="index.html" class="enlace-regreso">REGRESAR A INICIO</a>
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