[int] $num = Read-Host "Introduce un numero para hacer un triangulo"
$fila_anterior = ""
$numtotal = $num*2

for ($i = 1; $i -le $numtotal; $i++) {
#inicializando la variable $row como un arreglo vacío. 
   $row = @() 
   for ($j = $i; $j -gt 0; $j--) {
        if ($j % 2 -eq 1){
            $row += $j
            
        }   
   }
        $fila_actual = $row -join ' '
        if ($fila_actual -ne $fila_anterior) {
            Write-Host $fila_actual
            $fila_anterior = $fila_actual
    }
}

 