[int] $numasteriscos = Read-Host "Introduce un numero para hacer un triangulo"

for ($i = 0; $i -lt $numasteriscos; $i++) {
        $res = ""
        for ($j = 1+$i; $j -ge 1; $j-=1) {
           $res += "$j "
        }
    Write-Host $res
}