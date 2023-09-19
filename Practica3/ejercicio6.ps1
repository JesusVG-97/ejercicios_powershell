#Ejercicio 6. Crea un script que diga si lo que se pasa por teclado es un directorio. En ese caso sacará una lista con los archivos que contiene y subdirectorios. Debes utilizar el parámetro Recurse.
[String] $dir = Read-Host "Introduce el directorio a buscar"

if (Test-Path -PathType Container $dir){
    Write-Host "Es un directorio"
    Get-ChildItem $dir
} else {
    Write-Host "No es un directorio valido o  no existe"
}
