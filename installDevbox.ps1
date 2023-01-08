Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Set-WinUserLanguageList -LanguageList de-CH -Force

Import-Module Boxstarter.Chocolatey
Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions

choco install sysinternals
choco install teamviewer
choco install git
choco install fiddler4
choco install git-credential-winstore
choco install notepadplusplus
choco install dotpeek

#choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install IIS-WebServerRole -source windowsfeatures
