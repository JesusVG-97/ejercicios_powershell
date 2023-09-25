[char] $mujer = "M"
[char] $hombre = "H"
[string] $nombre = Read-Host "Introduce tu nombre"
[char] $yourgender = Read-Host "Introduce tu genero"

if ($yourgender -eq $mujer -or $yourgender -eq $hombre) {
    if ($yourgender -ieq $mujer) {
        if ($nombre -lt "M") {
            Write-Host "Perteneces al grupo A" 
        } else {
            Write-Host "Perteneces al grupo B"
        }  
    }

    if ($yourgender -ieq $hombre) {
        if ($nombre -lt "N"){
            Write-Host "Perteneces al grupo A"
        } else {
            Write-Host "Perteneces al grupo B"
        }
    }

} else {
    Write-Host = "Introduce un genero valido"
}