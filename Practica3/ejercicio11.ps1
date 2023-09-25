[int] $edad = Read-Host "Introduce tu edad"

if ($edad -lt 4) {
    Write-Host "Entras gratis" 
} elseif ($edad -ge 4 -and $edad -lt 18) {
    Write-Host "Debes de pagar 5€"
} elseif ($edad -ge 18) {
    Write-Host "Debes de pagar 10€"
}
