<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daviplata</title>
    <link rel="shortcut icon" href="assets/icon/logoDaviplata.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="assets/css/servicesDaviplata.css">
    </head>

<body>
    <header>
        <div class="navbar">
            <div class="logo"><a href="#">Daviplata</a></div>
            <ul class="links">
                <li><a href="bolsillo?accion=home">Inicio</a></li>
                <li><a href="bolsillo?accion=recargarDaviplata">Recargar</a></li>
                <li><a href="bolsillo?accion=retirarDaviplata">Retirar</a></li>
                <li><a href="bolsillo?accion=eleccion">Servicios</a></li>
            </ul>
                <a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a>
                <div class="toggle_btn">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
            <hr>
            <br>
            <header>
                <div class="resumen">
                    <section class="user">
                        <h1 class="bienvenido">Bienvenido</h1>
                        <br>
                            <p>Tu saldo es de: </p>
                            <div class="saldo">
                                <p>$<%=request.getAttribute("recargaDavi")%></p>
                            </div>
                            <br>
                        </div>
                    </section>
                    <a class="boton" href="bolsillo?accion=retirarDaviplata">Retirar Fondos</a>
                </div>

                <section class="reciente">
                    <div>
                        <br>
                        <hr>
                        <br>
                        <br>
                        <h1 class="medio">
                            Sin actividad reciente
                        </h1>

                    </div>
                </section>

            </header>

            <div class="dropdown_menu">
                <li><a href="bolsillo?accion=home">Inicio</a></li>
                <li><a href="bolsillo?accion=recargarDaviplata">Recargar</a></li>
                <li><a href="bolsillo?accion=retirarDaviplata">Retirar</a></li>
                <li><a href="bolsillo?accion=eleccion">Servicios</a></li>
                <li><a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a></li>
            </div>

            <script>
                const toggleBtn = document.querySelector('.toggle_btn')
                const toggleBtnIcon = document.querySelector('.toggle_btn i')
                const dropDownMenu = document.querySelector('.dropdown_menu')

                toggleBtn.onclick = function () {
                    dropDownMenu.classList.toggle('open')
                    const isOpen = dropDownMenu.classList.contains('open')

                    toggleBtnIcon.classList = isOpen
                        ? 'fa-solid fa-xmark'
                        : 'fa-solid fa-bars'

                }
            </script>

    </body>

    </html>