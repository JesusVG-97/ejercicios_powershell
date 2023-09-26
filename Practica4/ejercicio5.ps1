[int] $num = Read-Host "Introduce un numero"

for ($i = 10; $i -ge 1; $i--) {
    $resultado = $num * $i

    Write-host -NoNewline   $num "*" $i
    Write-Host " = " $resultado
}