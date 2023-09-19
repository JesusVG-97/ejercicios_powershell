#Ejercicio 5. Crea un script en el que pidas un fichero o carpeta por teclado y te diga si existe o no.
[String] $fichero = Read-Host "Introduce el fichero a buscar"

if ( Test-Path -Path $fichero) {
    Write-Host "El fichero o carpeta existe" 
} else {
    Write-Host "El fichero o carpeta no existe"
}
