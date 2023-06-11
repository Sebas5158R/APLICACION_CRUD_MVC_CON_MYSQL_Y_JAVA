function validar() {
    var numDoc, nombre;
    numDoc = document.getElementById("numDoc").value;
    nombre = document.getElementById("nombre").value;

    if (nombre == "" || numDoc == "") {
        Swal.fire({
            title:'Atención',
            text:'Los campos de número de documento y nombre son obligatorios, por favor confirma los datos para poder continuar con el proceso.',
            icon: 'info',
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