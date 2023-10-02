#Ejercicio 4. Crea un script basado en el anterior. Debe ser una calculadora muy sencilla, en la que se preguntará al usuario dos números y que operación desea realizar.
 Write-host "****** CALCULADORA ********

    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir
    5. Salir"


[int] $opcion = Read-Host "Introduce un valor"

if ($opcion -ne 5) {

[double] $num1 = Read-Host "Introduce el primer numero"
[double] $num2 = Read-Host "Introduce el segundo numero"



Function Sumar {
    param (
        [double] $num1,
        [double] $num2
    )
		$suma = $num1 + $num2
        Write-Host "El resultado de la suma es " $suma
}

Function Restar {
    param (
        [double] $num1,
        [double] $num2
    )
		$resta = $num1 - $num2
        Write-Host "El resultado de la resta es " $resta
}

Function Multiplicar {
    param (
        [double] $num1,
        [double] $num2
    )
		$multiplicacion = $num1 * $num2
        Write-Host "El resultado de la multiplicacion es " $multiplicacion
}

Function Division {
    param (
        [double] $num1,
        [double] $num2
    )
    [double] $dividir = $num1 / $num2
    Write-Host "El resultado de la division es " $dividir
}

switch ($opcion) { 

	1 {	
        Sumar $num1 $num2
	}

	2 {
		Restar $num1 $num2
	}
	3 {
		Multiplicar $num1 $num2
	}
    4 {
        Division $num1 $num2
    }

	default {
		Write-Host "Has introducido cualquier otro valor fuera de los indicados"
	}
 }
}