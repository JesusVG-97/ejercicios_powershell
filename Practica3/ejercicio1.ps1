#Ejercicio 1. Crea un script que solicite un número al usuario. El programa debe indicar si el número es impar o par.
[int] $num = Read-Host "Escribe el numero"


if ($num % 2 -eq 0) {

    Write-Host "El numero es par"

} else {

    Write-Host "El numero es impar"
}
