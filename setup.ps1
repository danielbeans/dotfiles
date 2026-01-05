# Install Mise tool manager
winget install jdx.mise

# Install Chezmoi dotfile manager
winget install twpayne.chezmoi

# Refresh environment path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Host "Environment Path refreshed."

# Init dotfiles repo
chezmoi init --apply https://github.com/danielbeans/dotfiles.git