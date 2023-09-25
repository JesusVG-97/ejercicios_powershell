[string] $password = Read-Host "Introduce tu contraseña" 

[string] $passwordguardada = "apruebame"

if ( $password -ieq $passwordguardada) {
    Write-Host "Enhorabuena, te acordaste de tu contraseña"
} else {
    Write-Host "uups, creo que surgio algo inesperado, fallaste la contraseña"
}