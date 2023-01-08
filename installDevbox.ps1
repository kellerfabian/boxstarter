Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Set-WinUserLanguageList -LanguageList de-CH -Force
TZutil /S "W. Europe Standard Time"

Disable-UAC

Import-Module Boxstarter.Chocolatey
Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions

choco install sysinternals -y
choco install teamviewer -y
choco install git -y
choco install fiddler4 -y
choco install git-credential-winstore -y
choco install notepadplusplus -y
choco install dotpeek -y
choco install microsoft-windows-terminal -y
choco install dotnet-6.0-sdk -y
choco install dotnet-7.0-sdk -y
choco install irfanview irfanviewplugins -y
choco install visualstudio2022professional -y
choco install visualstudio2022-workload-manageddesktop -y
choco install visualstudio2022-workload-netweb -y


#choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install IIS-WebServerRole -source windowsfeatures
Install-WindowsUpdate -AcceptEula
Disable-InternetExplorerESC
Disable-GameBarTips
Disable-BingSearch


Enable-UAC
