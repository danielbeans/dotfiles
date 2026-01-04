# Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh

# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# Initialize chezmoi
./bin/chezmoi init --apply https://github.com/danielbeans/dotfiles.git

# Run zsh
exec /bin/zsh