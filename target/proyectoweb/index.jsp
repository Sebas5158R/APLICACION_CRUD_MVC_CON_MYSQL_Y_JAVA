<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <title>Bolsillo Digital</title>
    <link rel="stylesheet" href="assets/css/index.css">
</head>
<body>
    <header>
        <div class="navbar">
            <div class="logo"><a href="bolsillo?accion=index" style="color: red;">Bolsillo Digital</a></div>
            <a href="bolsillo?accion=login" class="action_btn">Iniciar Sesión</a>
            <div class="toggle_btn">
                <i class="fa-solid fa-bars"></i>
            </div>
        </div>
        <div class="dropdown_menu">
            <li><a href="bolsillo?accion=index">Inicio</a></li>
            <li><a href="#">Acerca de</a></li>
            <li><a href="bolsillo?accion=login">Servicios</a></li>
            <li><a href="#">Contactenos</a></li>
            <li><a href="bolsillo?accion=login" class="action_btn">Iniciar Sesión</a></li>
        </div>
    </header>
    <main>
        <section id="hero">
            <div><img src="assets/img/Dashboard/sede_davivienda.png" width="80%" height="80%">
                <h2 style="color: rgb(0, 0, 0);">BIENVENIDO AL NUEVO MUNDO </h2>
                <br>
                <p style="color: #000000;">DaviPlata y Nequi son un servicio que ofrece el banco colombiano Davivienda y Bancolombia, <br> cuyo
                    objetivo es que los usuarios puedan gestionar su dinero de forma sencilla y gratuita.</p>
        </section>
        <div class="imagen">
            <h2>
                Enterate de todo lo que puedes hacer <br> manejando tu dinero desde este Bolsillo Digital.
            </h2>
            <br>
            <p class="h2">
                Puedes recargar minutos, comprar, pagar servicios, sacar dinero e incluso,
                pasarlo de un bolsillo digital a otro . <br> Haz clic en los botones que encontraras arriba y de una vez aprenda
                cómo es de fácil hacer tantas cosas.
            </p>
            <img src="assets/img/Dashboard/info1.png">
            <h3 class="img">De manera fácil y rápida pasa dinero, compra, paga servicios y mucho más.</h3>
        </div>
        <br>
        <br>
        <section>
            <div class="registro">
                <h2>REGISTRATE</h2>
                <br>
                <P>Para usar este Bolsillo Digital debes de tener una cuenta</P>
                <p>¡Crea una ya!</p>
                <div class="form-group">
                    <br>
                        <a href="bolsillo?accion=login" class="boton-registro">Registrarme</a>
                </div>
            </div>
        </section>
    </main>
    <hr>
    <footer class="pie-pagina">
        <a href="#">
            <h3>Información general</h3>
        </a>
        <a href="#">
            <h3>Pregunte aquí</h3>
        </a>
    </footer>

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