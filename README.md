## Setup

### Windows

```ps1
irm https://raw.githubusercontent.com/danielbeans/dotfiles/main/setup.ps1 | iex
```

### Unix

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/danielbeans/dotfiles/main/setup.sh)"
```

## Usage

### Mise

See: https://mise.jdx.dev/getting-started.html#mise-exec-run

```
mise use --global node@24 # install node 24 and set it as the global default
mise exec -- node my-script.js
# run my-script.js with node 24...
```

## Ref 
- https://github.com/KevinNitroG/dotfiles/tree/main
