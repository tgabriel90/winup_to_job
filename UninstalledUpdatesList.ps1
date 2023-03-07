#Lista las actualizaciones de Windows, ya sea que estén instaladas o no, y la gravedad
$Searcher = new-object -com "Microsoft.Update.Searcher"
$Searcher.Search("IsAssigned=1 and IsHidden=0").Updates | Format-Table title, MsrcSeverity, IsInstalled | Out-String -Width 256