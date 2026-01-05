MISE_BIN=~/.local/bin/mise

# Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh

# Install chezmoi
$MISE_BIN use --global chezmoi@latest

# Initialize chezmoi
$MISE_BIN exec -- chezmoi init --apply https://github.com/danielbeans/dotfiles.git

# Run zsh
echo "eval \"\$(~/.local/bin/mise activate zsh)\"" >> ~/.zshrc
exec /bin/zsh