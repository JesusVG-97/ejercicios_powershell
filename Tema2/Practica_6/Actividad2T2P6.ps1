Import-Module ActiveDirectory

# Crear la carpeta principal y compartirla de forma oculta
New-Item -Path "C:\Empresa.users" -ItemType Directory
New-SmbShare -Path "C:\Empresa.users" -Name "Empresa.users$" -Description "Carpeta compartida oculta para usuarios" -ScopeName "*" -FullAccess "Administradores"

$empleados = Import-Csv "C:\Users\Administrador\Desktop\empleados.csv" -Delimiter ";"

foreach ($e in $empleados) {
    $nombre = $e.nombre
    $apellido = $e.apellido
    $usuario = "$nombre.$apellido"
    $ruta = "C:\Empresa.users\$usuario"

    # Crear la carpeta personal del usuario
    New-Item -Path $ruta -ItemType Directory

    # Compartir la carpeta personal con Control Total para el usuario propietario
    New-SmbShare -Path $ruta -Name "$usuario$" -Description "Carpeta personal de $usuario" -ScopeName "*" -FullAccess $usuario
}

# Revocar el acceso a "Todos" en la carpeta principal "Empresa.users"
Revoke-SmbShareAccess -Name "Empresa.users$" -AccountName "Todos" -Force
