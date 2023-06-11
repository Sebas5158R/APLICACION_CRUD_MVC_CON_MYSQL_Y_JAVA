<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retirar Daviplata</title>
    <link rel="shortcut icon" href="assets/icon/logoDaviplata.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/retirarDaviplata.css">
</head>
<body>
    
    <form action="bolsillo" method="post" class="form">

        <h2 class="form--title" style="color: red;">Retirar</h2>
        <p class="form__paragraph">¿No sabes como? <a href="#" style="color: red;">Entra aquí</a></p>

        <div class="form__container">
            <div class="form__group">
                <input type="text" name="retirarDavi" id="cantidad" class="form__input" placeholder=" " required>
                <label for="retirarDavi" class="form__label">Cantidad:</label>
                <span class="form__line"></span>
            </div>
        </div>

        <div class="form__container">
            <div class="form__group">
                <input type="text" id="phone" class="form__input" placeholder=" ">
                <label for="phone" class="form__label">Cuenta (De que cuenta o número):</label>
                <span class="form__line"></span>
            </div>
        </div>

        <div class="form__container">
            <div class="form__group">
                <input type="number" id="code" class="form__input" placeholder=" ">
                <label for="code" class="form__label">Código:</label>
                <span class="form__line"></span>
            </div>

            <input type="submit" class="form__submit" name="accion" value="Retira">
            <a href="bolsillo?accion=daviplata" class="form__submit">Cancelar</a>
        </div>
    </form>

</body>
</html>