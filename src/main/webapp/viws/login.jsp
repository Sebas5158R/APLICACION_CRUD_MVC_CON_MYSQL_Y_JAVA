<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <!-- Importo página para la fuente -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;700&display=swap" rel="stylesheet">
    <!-- Importo página de iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Importo hojas de estilos -->
    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <!-- Importó otra página de iconos -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <div class="contenedor-formulario contenedor">
        <div class="imagen-formulario">
            <h1>Accede a características exclusivas con una cuenta gratuita</h1>
            <div>
                <p>
                    <div class="c1">
                        <i class="fa-solid fa-money-bill"></i>
                    Maneja de forma fácil y gratis el dinero, sin necesidad de tener una cuenta bancaria o tarjeta débito
                    </div> <br>

                    <div class="c2">
                        <i class="fa-solid fa-piggy-bank"></i>
                    Depósitos a la vista, diferente a la cuenta de ahorros y corriente, ofrecido a personas naturales
                    </div> <br>
                    
                    <div class="c3">
                        <i class="fa-solid fa-money-bill-transfer"></i>
                    Puedes elegir entre Nequi o Daviplata al momento de retirar plata. Es util para personas que no cuentan con una de las apps
                    </div> <br>

                    <div class="c4">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    Controla fácilmente tu historial de retiros y recargar. Cada vez que alguien te envie o tú recargues dinero se mostrara
                    </div>
                </p>
            </div>
        </div>

        <form class="formulario" action="usuario" method="post" onsubmit="return validar();">
            <div class="texto-formulario">
                <h2>Bienvenido de nuevo</h2>
                <p>Inicia sesión con tu cuenta</p>
            </div>
            <div class="input">
              <label for="tipoDoc">Tipo Documento</label>
              <select name="tipoDoc">
                <option>Cedula de ciudadania</option>
                <option>Tarjeta de identidad</option>
                <option>Pasaporte</option>
              </select>
            </div>
            <div class="input">
                <label for="numDoc">Número documento</label>
                <input placeholder="Ingresa tu documento" type="number" name="numDoc" id="numDoc">
            </div>
            <div class="input">
              <label for="password">Contraseña</label>
            </div>
            <div class="input_password">
                <input placeholder="Ingresa tu contraseña" type="password" name="password" id="password">
                <i class='bx bx-show-alt'></i>
            </div>
            <div class="password-olvidada">
                <a href="#">¿Olvidaste tu contraseña?</a>
            </div>
            <div class="input">
                <input type="submit" name="accion" value="Ingresar">
            </div>
            <div class="registro">
                <a href="usuario?accion=abrirForm">Registrarme</a>
            </div>
        </form>

    </div>

    <!-- Archivos JavaScript -->
    <script src="assets/js/login.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>