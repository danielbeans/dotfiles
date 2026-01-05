## Setup

### Windows

```ps1
irm https://raw.githubusercontent.com/danielbeans/dotfiles/refs/heads/main/setup.ps1 | iex
```

### Unix

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/danielbeans/dotfiles/refs/heads/main/setup.sh)"
```

## Usage

### Mise

See: https://mise.jdx.dev/getting-started.html#mise-exec-run

```
mise use --global node@24 # install node 24 and set it as the global default
mise exec -- node my-script.js
# run my-script.js with node 24...
```

## Ref 
- https://github.com/KevinNitroG/dotfiles/tree/main

## Testing

Test setup using Docker

### Linux

https://hub.docker.com/_/debian?uuid=C2F835E1-E236-4B78-9E79-586F3764926B

```sh
docker run -it debian:bookworm-slim bash -c "
  apt-get update && apt-get install -y sudo curl;
  useradd -m -s /bin/bash testuser;
  echo 'testuser:12345' | chpasswd
  adduser testuser sudo;
  su - testuser
"
```

### Windows

https://hub.docker.com/r/dockurr/windows?uuid=C2F835E1-E236-4B78-9E79-586F3764926B

or use Windows Sandbox if on Windows

#### In Windows Sandbox install winget

```ps1
$progressPreference = 'silentlyContinue' 
Write-Host "Installing WinGet PowerShell module from PSGallery..." 
Install-PackageProvider -Name NuGet -Force | Out-Null 
Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null 
Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..." 
Repair-WinGetPackageManager -AllUsers 
Write-Host "Done."
```
