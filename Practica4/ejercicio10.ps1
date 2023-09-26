# Mostrar el menú
do {
    Clear-Host
    Write-Host "Menú de opciones:"
    Write-Host "1) Crear una carpeta"
    Write-Host "2) Crear un fichero nuevo"
    Write-Host "3) Cambiar el nombre de un fichero o carpeta"
    Write-Host "4) Borrar un archivo o carpeta"
    Write-Host "5) Verificar si existe un fichero o carpeta"
    Write-Host "6) Mostrar el contenido de un directorio"
    Write-Host "7) Mostrar la fecha y hora actuales"
    Write-Host "8) Salir"

    $opcion = Read-Host "Elige una opción"

    switch ($opcion) {
        1 { 
        $nombreCarpeta = Read-Host "Introduce el nombre de la carpeta a crear"
        New-Item -ItemType Directory -Path $nombreCarpeta
        Write-Host "Carpeta creada: $nombreCarpeta" 
        }
        2 { 
            $nombreFichero = Read-Host "Introduce el nombre del fichero a crear"
            New-Item -ItemType File -Path $nombreFichero
            Write-Host "Fichero creado: $nombreFichero" 
          }
        3 { 
            $nombreAnterior = Read-Host "Introduce el nombre actual del fichero o carpeta"
            $nombreNuevo = Read-Host "Introduce el nuevo nombre"
            Rename-Item -Path $nombreAnterior -NewName $nombreNuevo
            Write-Host "Nombre cambiado a: $nombreNuevo" 
          }
        4 { 
            $path = Read-Host "Introduce la ruta del archivo o carpeta a borrar"
            Remove-Item -Path $path -Force
            Write-Host "Archivo o carpeta eliminado: $path" 
        }
        5 {  
            $path = Read-Host "Introduce la ruta del archivo o carpeta a verificar"
            $existe = Test-Path $path
            if ($existe) {
                Write-Host "El archivo o carpeta $path existe."
            } else {
                Write-Host "El archivo o carpeta $path no existe."
            } 
          }
        6 { 
            $rutaDirectorio = Read-Host "Introduce la ruta del directorio"
            Get-ChildItem -Path $rutaDirectorio  
          }
        7 { Get-Date
         
          }

        8 { 
            break 
          }
        default { Write-Host "Opción no válida. Inténtalo de nuevo." }
    }

    pause
} while ($opcion -ne 8)
