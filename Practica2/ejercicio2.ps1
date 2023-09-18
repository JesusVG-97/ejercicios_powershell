[int] $num1 = Read-Host "Escribe el primer numero: "
[int] $num2 = Read-Host "Escribe el segundo numero: "

[int] $suma = $num1 + $num2
[int] $resta = $num1 - $num2
[int] $multiplicacion = $num1 * $num2
[int] $division = $num1 / $num2
[int] $resto = $num1 % $num2

 Write-Host "La suma es: " $suma
 Write-Host "La resta es: " $resta
 Write-Host "La multiplicacion es: " $multiplicacion
 Write-Host "La division es: " $division
 Write-Host "El resto es: " $resto