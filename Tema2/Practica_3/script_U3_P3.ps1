# Importar el modulo ActiveDirectory
Import-Module ActiveDirectory

# Crear la unidad organizativa "Empresa"
New-ADOrganizationalUnit -Name "EMPRESA" -Path "DC=EMPRESA,DC=LOCAL"

# Importa el contenido de departamentos.csv
$departamento = Import-Csv -Path "C:\Users\Administrador\Desktop\departamentos.csv" -Delimiter ";"

# Importa los empleados para este departamento desde empleados.csv
$empleados = Import-Csv "C:\Users\Administrador\Desktop\empleados.csv" -Delimiter ";"

# Recorre sobre los departamentos y crear las unidades organizativas y grupos
foreach ($ou in $departamento) {

 #Variables que pillan los datos del archivo departamentos.csv y al recorrer el foreach le van pasando los datos.
    $departamentoName = $ou.departamento
    $descripcion = $ou.descripcion

    # Crear unidad organizativa para cada departamento
    New-ADOrganizationalUnit -Name $departamentoName -Description $descripcion -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL"

    #Pongo la variable grupo por si le quiero meter un prefijo en caso de que sea necesario
    $nombreGrupo = "$departamentoName"

    # Crear el grupo para cada departamento 
    New-ADGroup -Name $nombreGrupo -GroupCategory Security -GroupScope Global -Path "OU=$departamentoName,OU=EMPRESA,DC=EMPRESA,DC=LOCAL"


}

# Recorre los empleados y los añade al grupo del departamento
foreach ($empleado in $empleados) {

        #Variables que pillan los datos del archivo empleados.csv y al recorrer el foreach le van pasando los datos.
        $departamento2 = $empleado.departamento
        $nombre = $empleado.nombre
        $apellido = $empleado.apellido

        # Crear el usuario y agregarlo al grupo
        New-ADUser -Name "$nombre.$apellido" -GivenName $nombre -Surname $apellido -Path "OU=$departamento2,OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -AccountPassword (ConvertTo-SecureString -AsPlainText "aso2021." -Force) -ChangePasswordAtLogon $true
        Add-ADGroupMember -Identity $departamento2 -Members "$nombre.$apellido"

}
