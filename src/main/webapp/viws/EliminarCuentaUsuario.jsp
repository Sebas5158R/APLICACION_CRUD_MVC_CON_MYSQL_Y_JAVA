<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar cuenta</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <!--link a Hoja de estilos -->
    <link rel="stylesheet" href="assets/css/EliminarCuentaUsuario.css">
</head>
<body>
    <div class="formulario">
        <form action="usuario" method="post" onsubmit="return validar();">
            <c:forEach var = "usuario" items = "${usuario}">
                <h1>Eliminar cuenta</h1>
            <div class="numDoc">
                <input type="number" name="idUsuario" id="idUsuario" value="${usuario.getIdUsuario()}">
                <label for="delete">Id Usuario</label>
            </div>
            <div class="submit">
                <button type="submit" name="accion" value="delete" onclick="alert('Se elimino satisfactoriamente al usuario')">Borrar</button>
                <br><br>
                <a class="cancelar" href="usuario?accion=cancelar">Cancelar</a>
            </div>
            </c:forEach>
        </form>
    </div>

    <!-- Archivos JavaScript -->
    <script src="assets/js/eliminar.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>