# Mostrar el menú
do {
    Clear-Host
    Write-Host "Menú de opciones:"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"

   [string] $opcion = Read-Host "Elige una opción"

    switch ($opcion) {
        "a" { 
        $nombreCarpeta = Read-Host "Introduce el nombre de la carpeta a crear"
        New-Item -ItemType Directory -Path $nombreCarpeta
        Write-Host "Carpeta creada: $nombreCarpeta" 
        }
        "b" { 
            $nombreFichero = Read-Host "Introduce el nombre del fichero a crear"
            New-Item -ItemType File -Path $nombreFichero
            Write-Host "Fichero creado: $nombreFichero" 
          }
        "c" { 
            $nombreAnterior = Read-Host "Introduce el nombre actual del fichero o carpeta"
            $nombreNuevo = Read-Host "Introduce el nuevo nombre"
            Rename-Item -Path $nombreAnterior -NewName $nombreNuevo
            Write-Host "Nombre cambiado a: $nombreNuevo" 
          }
        "d" { 
            $path = Read-Host "Introduce la ruta del archivo o carpeta a borrar"
            Remove-Item -Path $path -Force
            Write-Host "Archivo o carpeta eliminado: $path" 
        }
        "e" {  
            $path = Read-Host "Introduce la ruta del archivo o carpeta a verificar"
            $existe = Test-Path $path
            if ($existe) {
                Write-Host "El archivo o carpeta $path existe."
            } else {
                Write-Host "El archivo o carpeta $path no existe."
            } 
          }
        "f" { 
            $rutaDirectorio = Read-Host "Introduce la ruta del directorio"
            Get-ChildItem -Path $rutaDirectorio  
          }
        "g" { Get-Date
         
          }

        "x" { 
            exit 
          }
        default { Write-Host "Opción no válida. Inténtalo de nuevo." }
    }

    pause
} while ($opcion -ne 8)
