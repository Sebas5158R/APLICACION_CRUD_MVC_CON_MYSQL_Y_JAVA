<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Principal</title>
    <link rel="shortcut icon" href="assets/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/eleccion.css">
</head>
<body>
    <div>
        <br>
        <h1 class="title">Bienvenido</h1>
    </div>
    <br>
    <br>
    <div class="texto">
        <h3>
            Elige una opción para poder seguir:
        </h3>
    </div>
    <br>
    <hr>
    <br>
    <br>
    <br>
    <section>
        <div class="logos">
            <img src="assets/img/Eleccion/nequi_logo.png">
            <img src="assets/img/Eleccion/daviplata_logo.png">
        </div>
        <div class="eleccion">
            <a href="bolsillo?accion=nequi" class="nequi" style="border: 1px solid #454270;" type="submit">Elegir Nequi</a>
            <a href="bolsillo?accion=daviplata" class="daviplata" style="border: 1px solid red;" type="submit2">Elegir Daviplata</a>
        </div>
    </section>
    <footer>
        <div id="copyright" class="pie-pagina">Copyright&copy; 2023 - Todos los derechos reservados</div>
    </footer>
</body>
</html>