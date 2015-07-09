<!DOCTYPE html>
<html>
    <head>
        <title>Cajero Fuente Carrantona</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="cajero.css">
    </head>
    <body>
        <h2>Cajero Fuente Carrantona</h2>        
        <select id="operacion">
            <option value="0">Ingresar efectivo</option>
            <option value="1">Retirar efectivo</option>
            <option value="2">Consultar movimientos</option>
        </select>  
        <?php if(@$mensaje['mensaje']): ?>
        <h3 class="<?php echo $mensaje['tipo']; ?>"><?php echo $mensaje['mensaje']; ?></h3>    
        <?php endif; ?>
        <div class="main" id="ingresar">
            <h3>Ingresar efectivo</h3>
            <form action="index.php" method="POST">
                <input type="hidden" name="opcion" value="ingresar"/>
                <input type="text" id="hora" name="hora" value="" readonly style="width: 100px;"/>
                <input type="text" id="fecha" name="fecha" value="" readonly style="width: 100px;"/>
                <input type="text" name="emisor" value="" placeholder="Nombre entidad emisora"/>    
                <input type="text" name="concepto" value="" placeholder="Concepto" style="width: 100%;"/>
                <input type="hidden" name="tipo" id="tipo" value="0"/>
                <input type="hidden" name="userId" id="userId" value="1"/>
                <input type="text" id="importe" name="importe" value="00.00" placeholder="Indicar cantidad" />
                <textarea name="detalles" placeholder="Detalles de la operacion" style="width: 100%; height: 250px;"></textarea>
                <button>Ingresar</button>
            </form>
        </div>
        <div class="main" id="retirar" style="display: none;">
            <h3>Retirar efectivo</h3>
            
        </div>   
        <div class="main" id="consultar" style="display: none;">
            <h3>Consultar mi cuenta desde una fecha</h3>
            <form action="index.php" method="POST" name='consultar' id='consultar'>
            <input type="hidden" name="tipo" id="tipo" value="2"/>  
            <input type="date" name="fechaInicio" placeholder="Movimientos desde ... "/>
            <input type="date" name="fechaFin" placeholder="Movimientos hasta ... "/>
            <input type="button" id="consultar" value="Consultar mi saldo"/>
            </form>
        </div> 
        <script src="cajero.js"></script>
    </body>
</html>

