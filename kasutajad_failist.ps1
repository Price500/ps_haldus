$fail = "C:\Users\Raini\ps_haldus\kasutajad.csv"
$kasutajad = Import-Csv $fail -Encoding Default -Delimiter ";"

foreach ($kasutaja in $kasutajad){
    $kasutajanimi = $kasutaja.Kasutajanimi
    $taisnimi = $kasutaja.Taisnimi
    $kontokirjeldus = $kasutaja.KontoKirjeldus
    $parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
    if([bool](Get-LocalUser -ErrorAction SilentlyContinue $kasutajanimi)){
        Write-Host  $kasutajanimi "Kasutaja on juba olemas" -ForegroundColor DarkRed}
    else{
        New-LocalUser -Name $kasutajanimi -Password $parool -FullName $taisnimi -Description $kontokirjeldus}}