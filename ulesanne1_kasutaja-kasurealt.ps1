$eesnimi = Read-Host "Sisesta oma eesnmimi"
$perenimi = Read-Host "Sisesta oma perenimi"

$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
$kasutajanimi = $("$eesnimi.ToLower().$perenimi.ToLower()")
$kirjeldus = "$eesnimi $perenimi kasutaja"
$taisnimi = $("$eesnimi $perenimi")
if([bool](Get-LocalUser -ErrorAction SilentlyContinue $kasutajanimi)){
    Write-Host  $kasutajanimi "Kasutaja on juba olemas" -ForegroundColor DarkRed}
else{
New-LocalUser -Name $taisnimi -Password $parool -FullName $taisnimi -Description $kirjeldus}
