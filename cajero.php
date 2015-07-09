<?php

class cajero {

    static function formulario($mensage = null){
        include_once 'pages/formulario.php';
    }
    static function mostrarMovimientos($result){
        include_once 'pages/mostrarMovimientos.php';
    }
}


