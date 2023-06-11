function validar() {
    var nombre, apellido, tipoDoc, numDoc, phone, password;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    tipoDoc = document.getElementById("tipoDoc").value;
    numDoc = document.getElementById("numDoc").value;
    phone = document.getElementById("phone").value;
    password = document.getElementById("password").value;

    if (nombre == "" || apellido == "" || numDoc == "" || phone == "" || password == "") {
        Swal.fire({
            title: 'Importante',
            text:"Todos los campos son obligatorios",
            icon: 'info',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (nombre.length > 30) {
        Swal.fire({
            title: 'Error',
            text:"El nombre es muy largo",
            icon: 'warning',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (apellido.length > 50) {
        Swal.fire({
            title: 'Error',
            text:"El apellido es muy largo",
            icon: 'warning',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (numDoc.length > 10) {
        Swal.fire({
            title: 'Error',
            text:"Número de documento no valido",
            icon: 'error',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (isNaN(numDoc)) {
        Swal.fire({
            title: 'Error',
            text:"En el número de documento solo se permiten números",
            icon: 'error',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (phone.length > 10) {
        Swal.fire({
            title: 'Error',
            text:"Ingrese un número de celular valido",
            icon: 'error',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (isNaN(phone)) {
        Swal.fire({
            title: 'Error',
            text:"Solo se permiten números en celular",
            icon: 'error',
            background: '#000',
            color: '#fff'
        });
        return false;
    }else if (password.length > 20) {
        Swal.fire({
            title: 'Importante',
            text:"La contraseña debe tener 20 caracteres como máx.",
            icon: 'warning',
            background: '#000',
            color: '#fff'
        });
        return false;
    }
}


//Para ver o ocultar password
const pass = document.getElementById("password"),
      icon = document.querySelector(".bx");

icon.addEventListener("click", e => {
    if(pass.type == 'password') {
        pass.type = "text";
        icon.classList.remove('bx-show-alt');
        icon.classList.add('bx-hide');
    }else {
        pass.type = "password";
        icon.classList.add('bx-show-alt');
        icon.classList.remove('bx-hide');
    }
})