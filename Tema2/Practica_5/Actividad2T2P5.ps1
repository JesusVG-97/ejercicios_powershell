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
  
# Permisos NTFS de los departamentos
foreach ($departamento in $departamentos) {

    $acl = Get-Acl -Path C:\Empresa\$departamento

    # Deshabilitar la herencia y eliminar TODAS las reglas de acceso
    $acl.SetAccessRuleProtection($true, $false)

    $permisos = 'Administradores','FullControl','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $permisos = "$departamento",'Modify','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    $permisos = 'Usuarios del dominio','Read','ContainerInherit, ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)
   
    Set-Acl -Path C:\Empresa\$departamento -AclObject $acl

}

