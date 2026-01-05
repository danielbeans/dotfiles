# Install Mise tool manager
winget install jdx.mise

# Install Chezmoi dotfile manager
iex "&{$(irm 'https://get.chezmoi.io/ps1')}"

# Init dotfiles repo
chezmoi init --apply https://github.com/danielbeans/dotfiles.git