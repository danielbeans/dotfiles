# Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh

# Install chezmoi
mise use --global chezmoi@latest

# Initialize chezmoi
mise exec -- chezmoi init --apply https://github.com/danielbeans/dotfiles.git

# Run zsh
exec /bin/zsh