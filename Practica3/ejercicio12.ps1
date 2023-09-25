

[string] $opcion = Read-Host "¿Quieres una pizza vegetariana, si o no?"

if ($opcion -ieq "si") {
    Write-Host "Tienes las siguientes opciones Pimiento o Tofu" 
    [string] $ingredientevegetariano = Read-Host "Introduce que ingrediente quieres"
    if ($ingredientevegetariano -ieq "Tofu") {
        Write-Host "Has elegido una pizza vegetariana con Tofu, mozzarella y tomate"
    } elseif ($ingredientevegetariano -ieq "Pimiento") {
        Write-Host "Has elegido una pizza vegetariana con Pimiento, mozzarella y tomate"
    }          
}

if ($opcion -ieq "no") {
    Write-Host "Tienes las siguientes opciones Peperoni, Jamon o Salmon"
    [string] $ingredientenovegetariano = Read-Host "Introduce que ingrediente quieres"
    if ($ingredientenovegetariano -ieq "Peperoni") {
         Write-Host "Has elegido una pizza no vegetariana con Peperoni, mozzarella y tomate"
    } elseif ($ingredientenovegetariano -ieq "Jamon") {
         Write-Host "Has elegido una pizza no vegetariana con Jamón, mozzarella y tomate"
    } elseif ($ingredientenovegetariano -ieq "salmon") {
         Write-Host "Has elegido una pizza no vegetariana con Salmón, mozzarella y tomate"
    }
}


