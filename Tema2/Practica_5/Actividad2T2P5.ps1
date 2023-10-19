Import-Module ActiveDirectory

New-Item -Path "C:\Empresa" -ItemType Directory

# Lista de nombres de departamentos
$departamentos = @("Finanzas", "Ventas", "Produccion", "Personal")

# Crear carpetas y compartir para cada departamento
foreach ($departamento in $departamentos) {
    $ruta = "C:\Empresa\$departamento"
    New-Item -Path $ruta -ItemType Directory
    New-SmbShare -Path $ruta -Name "$departamento" -FullAccess $departamento
    Grant-SmbShareAccess -Name $departamento -AccountName $departamento -AccessRight Change -Force
    Grant-SmbShareAccess -Name $departamento -AccountName Administradores -AccessRight Full -Force
    Grant-SmbShareAccess -Name $departamento -AccountName "Usuarios del dominio" -AccessRight Read -Force
    Revoke-SmbShareAccess -Name $departamento -AccountName "Todos" -Force

}


    

