## Installation process:

- install brew package mangager

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- install packages

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/monika1127/dotfiles/main/scripts/install_packages.sh)"
```

- [setup github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

  - start at **Generating a new SSH key and adding it to the ssh-agent**

- download the repository to you local machine

```bash
mkdir .repos
cd .repos
git clone git@github.com:monika1127/dotfiles.git
cd dotfiles
```

- set mac defaults. Some changes might need restart (to be confirmed)

```bash
sh ./mac_defaults/setup_defaults.sh
```

- run scripts to install and config applications.

```bash
sh ./scripts/setup_ohmyzsh.sh
sh ./scripts/setup_symlinks.sh
```
