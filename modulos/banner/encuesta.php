<?php

class encuesta {

    private $plataforma;
    private $navegador;
    private $pregunta;
    private $respuesta;

    function ClientBrowser() {

        $u_agent = $_SERVER['HTTP_USER_AGENT'];
        $this->navegador = 'Unknown';
        $this->plataforma = 'Unknown';

        if (preg_match('/Windows/i', $u_agent)) {
            $this->plataforma = 'Windows';
        }

        if (preg_match('/Firefox/i', $u_agent)) {
            $this->navegador = 'Firefox';
        }
    }
    /**
     * Mostramos el formulario con la pregunta y las opciones disponibles
     * @return string
     */
    function showForm() {
        $html = '<form action="index.php" method="POST">
                <p>Prefieres usar Mozilla o explorer?</p>
                Mozilla<input type="radio" value="Mozilla"/>
                Internet<input type="radio" value="Explorer"/>
                <button>Reponder</button>
            </form>';
        return($html);
    }

    /**
     * Encuesta sobre los navegadores
     * @return  boolean
     */
    function getPregunta() {
        $mysqli = new mysqli($host, $user, $password, $database, $port, $socket);
        $this->pregunta = $mysqli->query("SELECT * FROM preguntas LIMIT 1");
        return true;
    }

}
