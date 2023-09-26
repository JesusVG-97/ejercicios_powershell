[int] $numero = Read-Host "Introduce un numero"

for ($i = 0; $i -le $numero; $i++) {
    if ($i -eq 1){
        Write-Host -NoNewline $i

    } elseif ($i % 2 -ne 0) {
        Write-Host -NoNewline ", $i "
    } 
}
