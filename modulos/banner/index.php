<?php
include_once 'encuesta.php';
abstract class index 
{ 
    static function run()
    {
        $encuesta = new encuesta();
        echo $encuesta->showForm();
    }
    
}

index::run();

