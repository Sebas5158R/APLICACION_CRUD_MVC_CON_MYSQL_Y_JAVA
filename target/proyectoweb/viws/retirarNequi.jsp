<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retirar</title>
    <link rel="shortcut icon" href="assets/icon/nequiIcono.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/retirarNequi.css">
</head>
<body>
    
    <form action="bolsillo" method="post" class="form">

        <h2 class="form--title">Retirar</h2>
        <p class="form__paragraph">¿No sabes como? <a href="#">Entra aquí</a></p>

        <div class="form__container">
            <div class="form__group">
                <input type="text" name="retirar" id="cantidad" class="form__input" placeholder=" " required>
                <label for="retirar" class="form__label">Cantidad:</label>
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

            <input type="submit" class="form__submit" name="accion" value="Retirar">
            <a href="bolsillo?accion=nequi" class="form__submit">Cancelar</a>
        </div>
    </form>

</body>
</html>