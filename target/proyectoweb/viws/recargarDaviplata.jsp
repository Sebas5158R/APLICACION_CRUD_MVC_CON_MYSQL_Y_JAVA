<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daviplata</title>
    <link rel="shortcut icon" href="assets/icon/logoDaviplata.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/recargarDaviplata.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="https://kit.fontawesome.com/fde5666244.js" crossorigin="anonymous"></script>
</head>

<body>

    <div class="content">
        
        <h1 class="logo"><span>Davi</span>plata</h1>

        <div class="contact-wrapper">
            <div class="contact-form">
                <h3>Recarga:</h3>
                <form action="bolsillo" method="post">
                    <p>
                        <label for="cel">Cuenta:</label>
                        <input type="number" name="cel">
                    </p>
                    <p>
                        <label>Confirma la cuenta:</label>
                        <input type="number" name="confirmCuenta">
                    </p>
                    <p>
                        <label for="cantidadDavi">Cantidad:</label>
                        <input type="number" name="cantidadDavi" required>
                    </p>
                    <p class="block">
                        <button type="submit" name="accion" value="Recarga">
                            Recarga
                        </button>
                        <br>
                        <br>
                        <a href="bolsillo?accion=daviplata" class="cancelar">Cancelar</a>
                    </p>
                </form>
            </div>
            <div class="contact-info">
                <h4>Más info</h4>
                <ul>
                    <li><i class="fas fa-map-marker-alt"></i>Colombia</li>
                    <li><i class="fas fa-phone"></i>+573123456789</li>
                    <li><i class="fas fa-envelope"></i>contact@daviplata.com</li>
                </ul>
                <p>
                    Con Daviplata puedes recargar y/o pasar dinero a más cuentas, puedes pasar plata de Nequi a
                    Daviplata y viceversa.
                </p>
                <p>Daviplata.com</p>
            </div>
        </div>

    </div>

</body>

</html>