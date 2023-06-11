<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/home.css">
</head>

<body>
    <header>
        <div class="navbar">
            <div class="logo"><a href="#" style="color: red;">Bolsillo Digital</a></div>
            <ul class="links">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Acerca de</a></li>
                <li><a href="bolsillo?accion=eleccion">Servicios</a></li>
                <li><a href="usuario?accion=listar">Configuración</a></li>
            </ul>
            <a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a>
            <div class="toggle_btn">
                <i class="fa-solid fa-bars"></i>
            </div>
        </div>
        <hr>
        <br>
        <div class="slider-frame">
            <ul>
                <li><img src="assets/img/Home/1.jpg"></li>
                <li><img src="assets/img/Home/2.jpg"></li>
                <li><img src="assets/img/Home/3.jpg"></li>
            </ul>
            <br>
            <br>
            <br>
            <section>
                <div class="informacion">
                    <img src="assets/img/Home/Tarjetavirtual.png">
                    <h1>¿Ya tienes tu tarjeta virtual?</h1>
                    <p>
                        Con la Tarjeta Virtual puedes disfrutar comprando <br> por Internet en las
                        tiendas de
                        tu preferencia, <br> Apps de música, series, transporte, <br> domicilios y demás, sin cuota de
                        manejo ni
                        costos administrativos.
                    </p>
                </div>
            </section>
        </div>
        <section>
            <div class="pedir-tarjeta">
                <br>
                <br>
                <h1>ADQUIERALA TOTALMENTE GRATIS Y SIN COSTO</h1>
                <br>
                <div class="info-tarjeta">
                    <img
                        src="https://images.publicidad.davivienda.com/EloquaImages/clients/BANCODAVIVIENDADAVIPRO/%7Be06d5872-b22b-49bb-9c82-bda788c8bcf5%7D_InnerImage.png">
                    <p>
                        <br>
                        <br>
                        <br>
                        <i class="fa-solid fa-money-bills"></i>
                        Sin cobro de cuota de manejo, intereses o recarga: No lo sorprenderemos con un cobro adicional.
                        <br>
                        <br>
                        <br>
                        <i class="fa-brands fa-cc-mastercard"></i>
                        Franquicia Mastercard: Puede utilizarla en comercios en internet nacionales e internacionales.
                        <br>
                        <br>
                        <br>
                        <i class="fa-regular fa-credit-card"></i>
                        Puedes recargar tu Tarjeta apartir $5.000 hasta el tope de su Bolsillo Digital.
                        <br>
                        <br>
                        <br>
                        <i class="fa-solid fa-lock"></i>
                        Mayor seguridad: Recargue la tarjeta con el monto de la compra a realizar.
                    </p>
                </div>
            </div>
        </section>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <hr>
        <br>
        <br>
        <div class="slider-frame-nequi">
            <ul>
                <li><img src="assets/img/Home/4.jpg"></li>
                <li><img src="assets/img/Home/5.jpg"></li>
                <li><img src="assets/img/Home/6.jpg"></li>
            </ul>
        </div>
        <br>
        <br>
        <br>
        <br>
        <section>
            <div class="tarjeta-nequi">
                <img src="assets/img/Home/tarjeta-nequi.jpg">
                <h2>Sigue moviendo tu dinero de forma física o digital</h2>
                <h3>TARJETA NEQUI</h3>
                <p>Gasta lo que tienes y sigue en línea el registro de tus gastos.</p>
                <a href="bolsillo?accion=nequi" class="boton-tarjeta-nequi">Ir a Nequi</a>
            </div>
        </section>
        <div class="dropdown_menu">
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Acerca de</a></li>
            <li><a href="bolsillo?accion=eleccion">Servicios</a></li>
            <li><a href="usuario?accion=listar">Configuración</a></li>
            <li><a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a></li>
        </div>
    </header>

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