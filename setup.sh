# 1. Install mise (if not present)
curl https://mise.jdx.dev/install.sh | sh

# 2. Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# 3. Initialize chezmoi
./bin/chezmoi init --apply --verbose https://github.com/danielbeans/dotfiles.git