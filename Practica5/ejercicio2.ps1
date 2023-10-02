$user = Import-Csv C:\Scripts\Practica5\usuarios.csv -Delimiter ","

foreach ($us in $user)
{
 	Write-Host "Usuario: $($us.nombre) $($us.apellidos) $($us.grupo)"
}
