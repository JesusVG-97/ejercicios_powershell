[int] $numasteriscos = Read-Host "Introduce un numero para hacer un triangulo"

for ($i = 0; $i -lt $numasteriscos; $i++) {
        for ($j = 0; $j -le $i; $j++) {
            Write-Host -NoNewline "*"
        }
    Write-Host
}