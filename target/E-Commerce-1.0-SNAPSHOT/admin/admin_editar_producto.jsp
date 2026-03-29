<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Producto - Admin</title>
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

        .contenedor-formulario {
            width: 100%;
            max-width: 800px;
        }

        .contenedor-formulario h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 40px;
            text-transform: uppercase;
        }

        .grupo-input-completo {
            width: 100%;
            margin-bottom: 25px;
        }

        .grupo-input-mitad {
            width: 50%;
            margin-bottom: 25px;
        }

        .grupo-input-completo label, .grupo-input-mitad label {
            display: block;
            font-size: 10px;
            font-weight: bold;
            color: #555;
            letter-spacing: 1px;
            margin-bottom: 8px;
            text-transform: uppercase;
        }

        .grupo-input-completo input, .grupo-input-mitad input, .grupo-input-completo textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #eaeaea;
            outline: none;
            font-size: 14px;
            color: #000;
        }

        .grupo-input-completo textarea {
            resize: vertical;
            font-family: Arial, sans-serif;
            min-height: 120px;
            line-height: 1.5;
        }

        .acciones-formulario {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 40px;
        }

        .btn-actualizar {
            padding: 15px 35px;
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            cursor: pointer;
            font-size: 11px;
            font-weight: bold;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .btn-cancelar {
            padding: 15px 35px;
            background-color: #fff;
            color: #000;
            border: 1px solid #eaeaea;
            cursor: pointer;
            font-size: 11px;
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
            <h3>ADMINISTRACIÓN</h3>
            <hr class="separador">
            <ul>
                <li><a href="admin.html">Panel Principal</a></li>
                <li><a href="admin_usuarios.html">Usuarios</a></li>
                <li><a href="admin_productos.html" style="font-weight: bold;">Productos</a></li>
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
                <div class="contenedor-formulario">
                    
                    <h1>EDITAR PRODUCTO</h1>

                    <form action="admin_productos.html">
                        
                        <div class="grupo-input-completo">
                            <label>NOMBRE DEL PRODUCTO</label>
                            <input type="text" value="Camiseta Minimalista Algodón" required>
                        </div>

                        <div class="grupo-input-completo">
                            <label>DESCRIPCIÓN</label>
                            <textarea required>Camiseta de corte recto fabricada en algodón 100% orgánico. Diseño minimalista sin costuras laterales para mayor comodidad.</textarea>
                        </div>

                        <div class="grupo-input-mitad">
                            <label>PRECIO ($)</label>
                            <input type="number" step="0.01" value="25.00" required>
                        </div>

                        <div class="acciones-formulario">
                            <button type="submit" class="btn-actualizar">ACTUALIZAR</button>
                            <a href="admin_productos.html" class="btn-cancelar">CANCELAR</a>
                        </div>

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