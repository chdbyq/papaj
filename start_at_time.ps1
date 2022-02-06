$var3 = Read-Host "set time to start at (format-hh:mm)"
while (0 -eq 0) {
    $var1 = Get-Date -Format "HH:mm"
    [string]$var2 = $var1
    echo $var1
    if ($var2 -eq $var3) {
        [string]$v1=Get-Location
        $v2='\Papaj.gif'
        $location=$v1+$v2
        Invoke-Item "$location"
        taskkill -f -im explorer.exe
        Start-Sleep -s 5
        Stop-Computer -ComputerName localhost
        exit
    }
    Start-Sleep -s 5
}