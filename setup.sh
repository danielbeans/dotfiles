# 1. Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh

# 2. Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# 3. Initialize chezmoi
./bin/chezmoi init --apply https://github.com/danielbeans/dotfiles.git

# 4. Install zsh
sudo apt install zsh --yes && chsh -s $(which zsh) && exec /bin/zsh