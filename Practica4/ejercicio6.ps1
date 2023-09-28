[int] $random = Get-Random -Minimum 1 -Maximum 5

[int] $num = Read-Host "Introduce un numero a adivinar"

while ($num -ne $random) {
    if ($num -ne $random) {
        Write-Host "Fallaste, vuelve a probar"
        [int] $num = Read-Host "Introduce un numero para adivinar"
     }
} 
Write-Host "Felicidades acertaste el numero!"


