function validar() {
    var numDoc;
    numDoc = document.getElementById("numDoc").value;

    if (numDoc == "") {
        Swal.fire({
            title: 'Atención',
            text:'Para borrar a un usuario debes de poner el número de documento de el usuario a borrar',
            icon: 'error',
            color: '#fff',
            background: '#000'
        });
        return false;
    }
}