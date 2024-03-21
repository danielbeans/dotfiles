## Setup

Uses [chezmoi](https://www.chezmoi.io) for dotfile management.

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0 && . "$HOME/.asdf/asdf.sh"
asdf plugin add chezmoi && asdf install chezmoi latest && asdf global chezmoi latest
chezmoi init --apply git@github.com:danielbeans/dotfiles.git
```
