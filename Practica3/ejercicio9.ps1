[int] $renta = Read-Host "Introduce tu renta: "

    if ($renta -lt 10000) {
        Write-Host "5%"
     
    }elseif ($renta -ge 10000 -and $renta -le 19999) {
            Write-Host "15%"   
    } 
    elseif ($renta -ge 20000 -and $renta -le 34999) {
         Write-Host "20%"
    } 
    elseif ($renta -ge 35000 -and  $renta -le 59999) {
         Write-Host "30%" 
    } 
    elseif ($renta -ge 60000) {
         Write-Host "45%"
    }
