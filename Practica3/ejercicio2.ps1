#Ejercicio2. Escribir un programa que pregunte al usuario su edad y muestre por pantalla si es mayor de edad o no.
[int] $edad = Read-Host "Escribe tu edad"

if ($edad -ge 18) {
    Write-Host "Eres mayor de edad"
} else {
    Write-Host "Eres menor de edad"
}