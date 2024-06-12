$paths = @(
"c:\program files\intel\intel(r) management engine components\icls\libssl-3-x64.dll",

    # Voeg meer paden toe zoals vereist
    "c:\program files (x86)\microsoft sql server management studio 19\common7\ide\mashup\odbc drivers\simba spark odbc driver\openssl32.dlla\libcrypto-3.dll"
)

foreach ($path in $paths) {
    if (Test-Path $path) {
        Remove-Item $path -Force
        Write-Output "Verwijderd: $path"
    } else {
        Write-Output "Niet gevonden: $path"
    }
}
