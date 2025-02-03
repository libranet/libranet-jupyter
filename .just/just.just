# just


# Install tab-completions for just
[group: 'just']
[windows]
just-install-completions:
    #!pwsh.exe
    $filePath = Join-Path $HOME 'completions-just.ps1'
    just --completions powershell > $filePath
    Write-Host "Generated completions-file in $filePath"
    Write-Host "Add following line to your Powershell-profile:"
    Write-Host ". ~\completions-just.ps1 -Force"