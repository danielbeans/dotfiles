# Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh
echo "eval \"\$(~/.local/bin/mise activate bash)\"" >> ~/.bashrc
exec /bin/bash

# Install chezmoi
mise use --global chezmoi@latest

# Initialize chezmoi
mise exec -- chezmoi init --apply https://github.com/danielbeans/dotfiles.git

# Run zsh
echo "eval \"\$(~/.local/bin/mise activate zsh)\"" >> ~/.zshrc
exec /bin/zsh