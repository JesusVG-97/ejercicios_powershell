$nombre = Read-Host "Introduce tu nombre del usuario: "
$numero = Read-Host "Introduce un numero entero"

while ($numero -gt 0) {
    $numero = $numero - 1 
    Write-Host $nombre
}