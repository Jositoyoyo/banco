<div class="mov">
    <?php
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_array()) {
         echo $row['ID'].', '.$row['importe'].'<br>';   
        }
    }
    ?>   
</div>

