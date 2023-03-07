#Contador de dias desde que la ultima actualizacion fue echa
$date = Get-Date
$diff = (Get-HotFix | Sort-Object -Property InstalledOn)[-1] | Select-Object InstalledOn
$diff3 = New-TimeSpan -Start $diff.InstalledOn -end $date
write-host $diff3.days