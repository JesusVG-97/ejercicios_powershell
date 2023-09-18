[double] $horashechas = Read-Host "Introduce tus horas trabajadas"
[double] $costeporhoras = Read-Host "Introduce el coste por hora"

$resultado = $horashechas * $costeporhoras

Write-Host "el salario a pagar es " $resultado