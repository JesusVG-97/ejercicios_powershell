#Ejercicio 3. Crea un script en el que se pida dos números enteros al usuario. El script debe indicar si el primer número es mayor, menor o igual que el otro.
[int] $num1 = Read-Host "Introduce el primer numero"
[int] $num2 = Read-Host "Introduce el segundo numero"

if ($num1 -gt $num2) {
    Write-Host "El primer numero es mayor que el segundo numero"
} elseif ($num1 -lt $num2) {
    Write-Host "El primer numero es menor que el segundo numero"
} else {
    Write-Host "Los numeros son iguales"
}
