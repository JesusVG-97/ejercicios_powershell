#Importamos active directory y empleados.csv
Import-Module ActiveDirectory
$empleados = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -delimiter ";"


#Creamos la carpeta Empresa users y la compartimos en oculto
New-Item -Path C:\Empresa_users -ItemType Directory
New-SmbShare -Name Empresa_users$ -Path C:\Empresa_users -FullAccess "Usuarios del dominio"

#Recorremos la variable empleados y vamos creando las carpetas de los usuarios

foreach ($e in $empleados) {
    $name = $e.nombre
    $subname = $e.apellido
    $user = "$name.$subname"
    $path = "C:\Empresa_users\$user"
    
    New-Item -Path $path -ItemType Directory
}


#Recorremos la variable empleados para añadir los permisos NTFS
foreach ($e in $empleados) {
    $name = $e.nombre
    $subname = $e.apellido
    $user = "$name.$subname"

    $acl = Get-Acl -Path C:\Empresa_users\$user
    # Deshabilitar la herencia y eliminar todas las reglas de acceso
    $acl.SetAccessRuleProtection($true,$false)

    #Le damos permisos de control total a administradores
    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl.SetAccessRule($ace)

    #Le damos permisos de control total a los usuarios en sus propias carpetas
    $permisos = "$user",'FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $acl | Format-Table
    Set-Acl -AclObject $acl -Path C:\Empresa_users\$user
}

#Recorremos el foreach para establecer el home directory en la Z: de cada usuario
foreach ($e in $empleados) {
    $name = $e.nombre
    $subname = $e.apellido
    $user = "$name.$subname"
    Set-ADUser -Identity "$user" -ScriptPath "carpeta$($e.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\empresa-DC1\Empresa_users$\$user"
}