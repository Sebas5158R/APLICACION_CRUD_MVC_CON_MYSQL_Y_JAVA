<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <!-- Importo la hoja de estilos -->
    <link rel="stylesheet" href="assets/css/registrar.css">
    <!-- Importo la página de iconos -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="formulario">
        <h1 style="color: white;">Registrar</h1>
        <form action="usuario" method="post" onsubmit="return validar();">
            <div class="username">
                <input type="text" name="nombre" id="nombre">
                <label for="nombre">Nombre</label>
            </div>
            <div class="apellido">
                <input type="text" name="apellido" id="apellido">
                <label for="apellido">Apellido</label>
            </div>
            <div class="tipoDoc">
                <label for="tipoDoc">Tipo de documento</label>
                <select name="tipoDoc" id="tipoDoc">
                    <option>Cedula de ciudadania</option>
                    <option>Tarjeta de identidad</option>
                    <option>Pasaporte</option>
                </select>
            </div>
            <div class="numDoc">
                <input type="number" name="numDoc" id="numDoc">
                <label for="numDoc">Número documento</label>
            </div>
            <div class="phone">
                <input type="number" name="phone" id="phone">
                <label for="phone">Celular</label>
            </div>
            <div class="contraseña">
                <input type="password" name="password" id="password">
                <i class='bx bx-show-alt'></i>
                <label for="password">Contraseña</label>
            </div>
            <div class="submit">
                <button type="submit" name="accion" value="add">Registrarme</button>
                <br><br>
                <a class="cancelar" href="bolsillo?accion=index">Cancelar</a>
            </div>
        </form>
    </div>

    <!-- Archivos JavaScript -->
    <script src="assets/js/registrar.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
