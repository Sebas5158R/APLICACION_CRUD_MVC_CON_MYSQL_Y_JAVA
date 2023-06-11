<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="header.jsp" %>

<div class="table-container">
    <h1 class="heading">Usuarios</h1>
    <table border="1" class="table">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>TipoDocumento</th>
                <th>NúmeroDocumento</th>
                <th>Celular</th>
                <th>Contraseña</th>
                <th>Acciones</th>
            </tr>
        </thead>


        <c:forEach var="usuario" items="${usuario}">
            <tbody>
                <tr>
                    <td data-label="id">${usuario.getIdUsuario()}</td>
                    <td data-label="nombre">${usuario.getNombreUsuario()}</td>
                    <td data-label="apellido">${usuario.getApellidoUsuario()}</td>
                    <td data-label="tipoDoc">${usuario.getTipoDocumento()}</td>
                    <td data-label="numDoc">${usuario.getNumeroDocumento()}</td>
                    <td data-label="phone">${usuario.getCelular()}</td>
                    <td data-label="contraseña">${usuario.getContraseña()}</td>
                    <td data-label="Acciones"><a href="usuario?accion=editar" class="btn">Editar</a></td>
                </tr>
            </tbody>
        </c:forEach>
    </table>
    <br><br>
    <div>
        <a href="usuario?accion=cancelar" class="volver">Volver al inicio</a>
        <a href="usuario?accion=abrirForm" class="agregar">Agregar usuario</a>
    </div>
</div>

<%@include file="footer.jsp" %>