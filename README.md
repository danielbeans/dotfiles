## Setup

### Windows

```
irm https://raw.githubusercontent.com/danielbeans/dotfiles/main/setup.ps1 | iex
```

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0 && . "$HOME/.asdf/asdf.sh"
asdf plugin add chezmoi && asdf install chezmoi latest && asdf global chezmoi latest
chezmoi init --apply git@github.com:danielbeans/dotfiles.git
```

Install and switch to ZSH
```sh
sudo apt install zsh --yes && chsh -s $(which zsh) && exec /bin/zsh
```

Add ASDF plugins
```
asdf plugin-add <plugin>
asdf install <plugin> <lastest|version>
asdf global|local <plugin> <lastest|version>
```
