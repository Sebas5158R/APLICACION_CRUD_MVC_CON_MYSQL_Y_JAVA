<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Cuenta</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <!-- Importó la hoja de estilos -->
    <link rel="stylesheet" href="assets/css/EditarCuentaUsuario.css">
    <!-- Importó la página de iconos -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="formulario">
        <h1>Acá puedes editar los usuarios</h1>

        <!-- Solo se puede editar el tipo de documento, el número de celular y la contraseña -->

        <form action="usuario" method="post" onsubmit="return validar();">
            <div class="tipoDoc">
                <label for="tipoDoc">Tipo de documento</label>
                <select name="tipoDoc">
                    <option>Cedula de ciudadania</option>
                    <option>Tarjeta de identidad</option>
                    <option>Pasaporte</option>
                </select>
            </div>
            <div class="phone">
                <input type="number" name="phone">
                <label for="phone">Número celular</label>
            </div>
            <div class="password">
                <input type="password" name="password" id="password">
                <i class='bx bx-show-alt'></i>
                <label for="password">Contraseña</label>
            </div>

            <h1>Confirma los siguientes datos para poder continuar con el proceso</h1>

            <!-- Para cambiar los datos se necesita confirmar el número de documento y el nombre del
                 que se le va a editar la información -->
                 
            <div class="numDoc">
                <input type="number" name="numDoc" id="numDoc">
                <label for="numDoc">Número de documento</label>
            </div>
            <div class="name">
                <input type="text" name="nombre" id="nombre">
                <label for="nombre">Nombre</label>
            </div>
            <div class="submit">
                <button type="submit" name="accion" value="editUser">Confirmar</button>
                <br><br>
                <a class="cancelar" href="usuario?accion=cancelar">Cancelar</a>
            </div>
        </form>
    </div>

    <a class="borrar_cuenta" href="usuario?accion=borrar">Eliminar cuenta</a>


    <!-- Archivos JavaScript -->
    <script src="assets/js/editar.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>