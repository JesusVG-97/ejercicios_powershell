[int] $numero = Read-Host "Introduce un numero: "

for ($i = $numero; $i -ge 0; $i--) {
    if ($i -eq $numero) {
        Write-Host -NoNewline $numero
    } else {
        Write-Host -NoNewline ", $i "
    }
}