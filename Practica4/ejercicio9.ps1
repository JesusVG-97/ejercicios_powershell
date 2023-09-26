[string] $password = Read-Host "Guarda tu contraseña" 
[string] $passwordguardada = $password

[string] $intento = Read-Host "Intenta entrar con tu contraseña"

while ($intento -ne $passwordguardada) {

    if ( $intento -ne $passwordguardada) {
         Write-Host "uups, creo que surgio algo inesperado, fallaste la contraseña, vuelve a probar"
        [string] $intento = Read-Host "Intenta entrar con tu contraseña"
    }
}
Write-Host "Enhorabuena, te acordaste de tu contraseña"