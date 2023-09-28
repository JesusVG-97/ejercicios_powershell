[int] $num = Read-Host "Introduce un numero para hacer un triangulo"

for ($i = 0; $i -lt $num; $i++) {
        for ($j = 0; $j -le $i; $j++) {
            if ($j -eq $i){
            Write-Host -NoNewline "*"
            } else {
            Write-Host -NoNewline "-"
            }
        }
    Write-Host
}