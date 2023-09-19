#Ejercicio 4. Crea un script basado en el anterior. Debe ser una calculadora muy sencilla, en la que se preguntará al usuario dos números y que operación desea realizar.
 Write-host "****** CALCULADORA ********

    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir"
[int] $opcion = Read-Host "Introduce un valor"
[int] $num1 = Read-Host "Introduce el primer numero"
[int] $num2 = Read-Host "Introduce el segundo numero"

switch ($opcion) { 

	1 {	
     
		[double] $suma = $num1 + $num2
        Write-Host "El resultado de la suma es " $suma
	}

	2 {
		[double] $resta = $num1 - $num2
		Write-Host "El resultado de la resta es " $resta
	}
	3 {
		[double] $multiplicar = $num1 * $num2
		Write-Host "El resultado de la multiplicacion es " $multiplicar
	}
    4 {
        [double] $dividir = $num1 / $num2
        Write-Host "El resultado de la division es " $dividir
    }
	default {
		
		Write-Host "Has introducido cualquier otro valor fuera de los indicados"
	}
}
