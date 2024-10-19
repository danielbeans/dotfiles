## Setup

Uses [chezmoi](https://www.chezmoi.io) for dotfile management.

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0 && . "$HOME/.asdf/asdf.sh"
asdf plugin add chezmoi && asdf install chezmoi latest && asdf global chezmoi latest
chezmoi init --apply git@github.com:danielbeans/dotfiles.git
```

```sh
# Install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# Install oh-my-zsh plugins and themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Set default shell to zsh
chsh -s $(which zsh)
while [[ $? > 0 ]]; do
    chsh -s $(which zsh)
done

# Switch to zsh
exec /bin/zsh
```
