$fail = "C:\Users\Raini\ps_haldus\kasutajad.csv"
$kasutajad = Import-Csv $fail -Encoding Default -Delimiter ";"

foreach ($kasutaja in $kasutajad){
    $kasutajanimi = $kasutaja.Kasutajanimi
    $taisnimi = $kasutaja.Taisnimi
    $kontokirjeldus = $kasutaja.KontoKirjeldus
    $parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force

    New-LocalUser -Name $kasutajanimi -Password $parool -FullName "$taisnimi" -Description "$kontokirjeldus"}