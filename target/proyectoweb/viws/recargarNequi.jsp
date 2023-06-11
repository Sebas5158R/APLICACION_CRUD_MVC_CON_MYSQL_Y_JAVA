<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recargar Nequi</title>
    <link rel="shortcut icon" href="assets/icon/nequiIcono.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/recargarNequi.css">
</head>

<body>

    <div class="logo-nequi">
        <img src="assets/img/RecargarNequi/logo-nequi.svg">
    </div>

    <div class="formulario">
        <form action="bolsillo" method="post">
            <h2>Recarga</h2>
            <br>
            <div class="input-group">
                <label for="phone">Cuenta a recargar</label>
                <input type="number" name="phone" id="phone" placeholder="Número de celular">
                <input type="number" name="confirm-phone" id="confirm-phone" placeholder="Confirma número celular">
                <br>
                <label for="cantidad">Cantidad</label>
                <input type="text" name="cantidad" placeholder="Cantidad a recargar" required>
                <br>
                <label for="banco">Elije el banco</label>
                <select name="bancos">
                    <option> </option>
                    <option>BANCO AV VILLAS</option>
                    <option>BANCO BBVA COLOMBIA</option>
                    <option>BANCO DAVIVIENDA</option>
                    <option>BANCO DE BOGOTÁ</option>
                    <option>DAVIPLATA</option>
                    <option>MOVII S.A</option>
                </select>
                <br>
                <br>
                <div class="form-txt">
                    <a href="#">Politica de privacidad</a>
                    <a href="#">Terminos y condiciones</a>
                </div>
                <input class="btn-rosa" type="submit" name="accion" value="Recargar">
                <a href="bolsillo?accion=nequi" class="btn">Cancelar</a>
            </div>
        </form>
    </div>

</body>
</html>