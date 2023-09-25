[double] $inaceptable = 0.0
[double] $aceptable = 0.4 
[double] $meritorio = 0.6

Write-Host "1 - Inaceptable"
Write-Host "2 - Aceptable"
Write-Host "3 - Meritorio"

[string] $puntuacion = Read-Host "Que puntacion tienes?"
 switch ($puntuacion){
    1 { $calcular = $inaceptable * 2400
            $total = 2400 + $calcular
            Write "Tu plus es de " $calcular
            Write "El salario total a ganar es " $total  
      }

    2 {$calcular = $aceptable * 2400
        $total = 2400 + $calcular
         Write "Tu plus es de " $calcular
         Write "El salario total a ganar es " $total 
    }

    3 { 
        $confirmacion = Read-Host "¿Tu puntacion es superior a 0.6?" 
        if ($confirmacion -eq "si") {
            [double] $nuevoMeritorio = Read-host "Introduce tu puntacion meritoria"
             
            if ($nuevoMeritorio -gt 0.6) {
                $calcular1 = $nuevoMeritorio * 2400
                $total1 = 2400 + $calcular1
                Write "Tu plus es de " $calcular1
                Write "El salario total a ganar es " $total1 
            } 
            
            } else {
                $calcular = $meritorio * 2400
                $total = 2400 + $calcular
                Write "Tu plus es de " $calcular
                Write "El salario total a ganar es " $total    
        }
      }
    }
