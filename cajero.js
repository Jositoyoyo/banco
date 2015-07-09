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

function init() {
    setOperacion();
    setHoraDia();
}
window.addEventListener('load', init());


