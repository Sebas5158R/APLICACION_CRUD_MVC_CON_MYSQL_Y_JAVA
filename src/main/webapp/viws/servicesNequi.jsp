<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nequi</title>
    <link rel="shortcut icon" href="assets/icon/nequiIcono.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/servicesNequi.css">
</head>

<body>
    <header>
        <div class="navbar">
            <div class="logo"><a href="#"><img src="assets/img/ServicesNequi/logo_nequi.svg"></a></div>
            <ul class="links">
                <li><a href="bolsillo?accion=home">Inicio</a></li>
                <li><a href="bolsillo?accion=recargarNequi" class="a">Recargar</a></li>
                <li><a href="bolsillo?accion=retirarNequi" class="b">Retirar</a></li>
                <li><a href="bolsillo?accion=eleccion" class="c">Servicios</a></li>
            </ul>
            <a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a>
            <div class="toggle_btn">
                <i style="color: blue;" class="fa-solid fa-bars"></i>
            </div>
        </div>

        <div class="dropdown_menu">
            <li><a href="bolsillo?accion=home">Inicio</a></li>
            <li><a href="bolsillo?accion=recargarNequi">Recargar</a></li>
            <li><a href="bolsillo?accion=retirarNequi">Retirar</a></li>
            <li><a href="bolsillo?accion=eleccion">Servicios</a></li>
            <li><a href="bolsillo?accion=index" class="action_btn">Cerrar Sesión</a></li>
        </div>
        <hr>
    </header>

    <main>
        <h1 class="welcome">Bienvenido</h1>

        <section>
            <div class="saldo">
                <h2>Resumen</h2>
            </div>
        </section>
    
        <div class="Nequi">
            <div>
                <div>
                    <h2>Saldo de Nequi</h2>
                    <div>
                        <div>
                            <button aria-haspopup="menu" aria-label="Menú"></button>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <div class="num-saldo">
                            <span font-size="40px" font-weight="400">
                                <p>${saldo}</p>
                            </span>
                        </div>
                        <div style="margin-bottom:7px">
                            <h5 class="saldo-disponible">Disponible</h5>
                        </div>
                    </div>
                    <a href="bolsillo?accion=retirarNequi">
                        <div class="Boton-transferir">Retirar fondos</div>
                    </a>
                </div>
            </div>
        </div>
    
        <div class="container">
            <div class="card">
                <img
                    src="https://assets-global.website-files.com/6317a229ebf7723658463b4b/636d1ce49aae2859f73f2392_PayPal%20Card.jpg">
                <h4 class="rosa">Para llevar el mundo en tu Nequi y seguir en contacto</h4>
                <h2 class="rosa">PayPal</h2>
                <p>Recibe en dólares y pásalo a tu Nequi, es fácil y seguro.</p>
                <br>
                <br>
                <a href="#" class="boton-rosa">Más detalles</a>
            </div>
    
            <div class="card">
                <img
                    src="https://assets-global.website-files.com/6317a229ebf7723658463b4b/636d1ec966259844c3060429_Propulsor%20Card.jpg">
                <h4>Para esos sueños que quieres lograr</h4>
                <br>
                <h2>Préstamo Propulsor</h2>
                <p>¡Recibe la plata de una en tu Nequi! Y págala a 24 meses.</p>
                <br>
                <br>
                <a href="#" class="boton-azul">Más detalles</a>
            </div>
        </div>
    </main>


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