<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        <form action="usuario" method="post" onsubmit="return validar();">
            <c:forEach var = "usuario" items = "${usuario}">
                <div class="name">
                    <input type="text" name="nombre" id="nombre" value="${usuario.getNombreUsuario()}">
                    <label for="nombre">Nombre</label>
                </div>
                <div class="apellido">
                    <input type="text" name="apellido" id="apellido" value="${usuario.getApellidoUsuario()}"
                    <label for="apellido">Apellido</label>
                </div>
                <div class="tipoDoc">
                    <label for="tipoDoc">Tipo de documento</label>
                    <select name="tipoDoc">
                        <option>Cedula de ciudadania</option>
                        <option>Tarjeta de identidad</option>
                        <option>Pasaporte</option>
                    </select>
                </div>
                <div class="numDoc">
                    <input type="number" name="numDoc" id="numDoc" value="${usuario.getNumeroDocumento()}">
                    <label for="numDoc">Número de documento</label>
                </div>
                <div class="phone">
                    <input type="number" name="phone" value="${usuario.getCelular()}">
                    <label for="phone">Número celular</label>
                </div>
                <div class="password">
                    <input type="password" name="password" id="password" value="${usuario.getContraseña()}">
                    <i class='bx bx-show-alt'></i>
                    <label for="password">Contraseña</label>
                </div>
                
                <div class="submit">
                    <button type="submit" name="accion" value="editUser" onclick="alert('Se actualizo con éxito')">Confirmar</button>
                    <br><br>
                    <a class="cancelar" href="usuario?accion=cancelar">Cancelar</a>
                </div>
            </c:forEach>
        </form>
    </div>

    <c:forEach var = "usuario" items = "${usuario}">
        <a class="borrar_cuenta" href="usuario?accion=borrar&idUsuario=${usuario.getIdUsuario()}">Eliminar cuenta</a>
    </c:forEach>

    <!-- Archivos JavaScript -->
    <script src="assets/js/editar.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>