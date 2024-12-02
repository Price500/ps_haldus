if($args.Count -ne 3){
    Write-Host './skript kasutajanimi "Eesnimi Perenimi" "Konto kirjeldus"' -ForegroundColor DarkMagenta}
else{
    $username = $args[0]
    $fullname = $args[1]
    $description = $args[2]

$salasõna = ConvertTo-SecureString "qwerty" -AsPlainText -Force

New-LocalUser $username -Password $salasõna -FullName $fullname -Description $description}