function validar() {
    var numDoc, password;
    numDoc = document.getElementById("numDoc").value;
    password = document.getElementById("password").value;
  
    if(numDoc == "" || password == "") {
        Swal.fire({
            title: 'No se puede ingresar',
            text:"Todos los campos son obligatorios",
            icon: 'info',
            background: '#000',
            color: '#fff'
        });
      return false;
    }else if (numDoc.length > 10) {
        Swal.fire({
            title: 'Número de documento invalido',
            text:"Ingrese un número de documento valido",
            icon: 'error',
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