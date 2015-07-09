var ingresar = document.getElementById("ingresar");
var retirar = document.getElementById("retirar");
var consultar = document.getElementById("consultar");

function setOperacion() {
    var operacion = document.getElementById("operacion");
    operacion.addEventListener('change', function () {

        switch (operacion.value) {
            case '0':
                ingresar.style.display = "block";
                retirar.style.display = "none";
                consultar.style.display = 'none';
                break;
            case '1':
                ingresar.style.display = "none";
                retirar.style.display = "block";
                consultar.style.display = 'none';
                break;
            case '2':
                ingresar.style.display = "none";
                retirar.style.display = "none";
                consultar.style.display = 'block';
                break;
        }

    });
}

function setHoraDia() {
    var hora = new Date();
    var setHora = document.getElementById("hora");
    var setDia = document.getElementById("fecha");
    setHora.value = hora.getHours() + ':' + hora.getMinutes() + ':' + hora.getSeconds();
    setDia.value = hora.getFullYear() + '-' + hora.getMonth() + '-' + hora.getDay();
}

function consultarMovimientosAjax() {
    var botonConsulta = document.getElementById("consultar");
    botonConsulta.addEventListener('click', function(){
        var fechaInicio = document.getElementById("fechaInicio").value;
        var fechaFinal = document.getElementById("fechaFinal").value;
        var peticion = new XMLHttpRequest();
        peticion.onreadystatechange = function(){
            if(peticion.readyState == 4) {                
                  if(peticion.status == 200) {
                      document.getElementById("mostrarMovimientos").innerHTML = peticion.responseText;
                      console.log(peticion.readyState+', '+peticion.status );
                  }          
              }
        };
        peticion.open('POST','index.php',true);
        peticion.setRequestHeader("Content-Type", "application/x-www-form-urlencoded") ;
        peticion.send('tipo=2&fechaInicio='+fechaInicio+'&fechaFinal='+fechaFinal);
    });
    
}

function init() {
    setOperacion();
    setHoraDia();
    consultarMovimientosAjax()
}
window.addEventListener('load', init());


