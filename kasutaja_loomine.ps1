$salasõna = ConvertTo-SecureString "qwerty" -AsPlainText -Force

New-LocalUser "kasutaja1" -Password $salasõna -FullName "Esimene kasutaja" -Description "kohalik konto"