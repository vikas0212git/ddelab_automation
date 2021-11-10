
# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#  Install AZ Cli
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; #rm .\AzureCLI.msi

# .Net core
choco install dotnetcore -y
choco install dotnetcore-runtime
choco install dotnetcore-sdk
choco install visualstudio2017professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

# Install node.js
choco install nodejs

# Install git
choco install git

# install python
choco install python --version 3.7.8
choco install python --version 3.8.6
choco install python --version 3.9.0

# instal putty
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.76-installer.msi -OutFile .\Putty.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I Putty.msi /quiet'; #rm .\Putty.msi

# Install IOT Explorer
choco install azure-iot-explorer

#Install docker desktop
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile .\Docker.exe
Start-Process -Wait -Filepath .\Docker.exe -ArgumentList "/quiet"
# rm .\Docker.msi

 # Instal cmake
 $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://github.com/Kitware/CMake/releases/download/v3.21.4/cmake-3.21.4-windows-x86_64.msi -OutFile .\cmake.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I cmake.msi /quiet'; #rm .\cmake.msi

 # Install winscp
 Install-Module -Name WinSCP

 # Enable WSL
 Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

 # Instal VisualDB
 $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://sysprogs.com/getfile/1686/VisualGDB-5.6-trial.msi -OutFile .\VisualGDB.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I VisualGDB.msi /quiet'; #rm .\VisualGDB.msi

 # Install USBPCap
     
 Invoke-WebRequest -uri "https://github.com/desowin/usbpcap/releases/download/1.5.4.0/USBPcapSetup-1.5.4.0.exe" -OutFile USBcapSetup.exe

 Start-Process -Wait -Filepath .\USBcapSetup.exe -ArgumentList "/quiet"
 #rm .\USBcapSetup.msi