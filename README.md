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

## Testing

Test setup using Docker

### Linux

https://hub.docker.com/_/debian?uuid=C2F835E1-E236-4B78-9E79-586F3764926B

```sh
docker run -it debian:bookworm-slim bash -c "
  apt-get update && apt-get install -y sudo curl;
  useradd -m -s /bin/bash testuser;
  echo 'testuser:12345' | chpasswd
  adduser testuser sudo;
  su - testuser
"
```

### Windows

https://hub.docker.com/r/dockurr/windows?uuid=C2F835E1-E236-4B78-9E79-586F3764926B
