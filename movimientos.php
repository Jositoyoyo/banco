<?php

class movimientos {

    private $ID;
    private $tipo;
    private $userId;
    private $fecha;
    private $hora;
    private $importe;
    private $concepto;
    private $detalles;
    private $emisor;
    private $estado;
    
    function __construct() {
        
       @$this->tipo = $_REQUEST['tipo'];
       @$this->userId = $_REQUEST['userId'];
       @$this->fecha = $_REQUEST['fecha'];
       @$this->hora = $_REQUEST['hora'];
       @$this->importe = $_REQUEST['importe'];
       @$this->concepto = $_REQUEST['concepto'];
       @$this->detalles = $_REQUEST['detalles'];
       @$this->emisor = $_REQUEST['emisor'];
       @$this->estado = '2';
        
    }
    function conectarBaseDatos(){
        return(new mysqli('localhost', 'root', 'jositoyoyo', 'banco'));
    }
    function mostrarMovimientos() {
        $fechaInicio = $_POST['fechaInicio'];
        $fechaFinal = $_POST['fechaFinal'];
        $sqli = $this->conectarBaseDatos();
        $result = $sqli->query("SELECT * FROM cuenta");        
        return($result);
    }
    function setMovimiento() {
        $sqli = $this->conectarBaseDatos();
        $sqli->autocommit(false);       
        $sqli->query("INSERT INTO cuenta (userId, fecha, hora, tipo, importe, concepto, detalles, estado) "
                            . "VALUES('$this->userId', '$this->fecha', '$this->hora', '$this->tipo', "
                            . "'$this->importe', '$this->concepto', '$this->detalles', '$this->estado')");
        try {
            $sqli->commit();
            $sqli->close(); 
            return(true);
        } catch (Exception $e) {
            $sqli->rollback();
            $sqli->close();
            return(false);
        } 
              
    }

}
