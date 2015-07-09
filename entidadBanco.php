<?php

include_once 'movimientos.php';
include_once 'cajero.php';

class entidadBanco {

    private $execute;

    function __construct() {
        @$this->execute = $_REQUEST['tipo'];
        switch ($this->execute) {
            case '0':
                $setEfectivo = new movimientos();
                if ($setEfectivo->setMovimiento() == true) {
                    cajero::formulario($mensaje = array('mensaje' => 'Exito al ingresar efectivo', 'tipo' => 'success'));
                }
                break;
            case '2':
                $mostrarMovimientos = new movimientos();
                if($mostrarMovimientos->mostrarMovimientos()){
                    cajero::mostrarMovimientos($mostrarMovimientos->mostrarMovimientos());
                }
                break;
            default:
                cajero::formulario();
                break;
        }
    }

}

new entidadBanco();
