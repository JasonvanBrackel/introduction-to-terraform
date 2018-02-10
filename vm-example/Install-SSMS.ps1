Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
$env:Path += ";C:\ProgramData\chocolatey\bin\"
choco install sql-server-management-studio -y