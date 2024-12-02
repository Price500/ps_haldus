param(
    $username,
    $fullname,
    $description)

$salasõna = ConvertTo-SecureString "qwerty" -AsPlainText -Force

New-LocalUser $username -Password $salasõna -FullName $fullname -Description $description