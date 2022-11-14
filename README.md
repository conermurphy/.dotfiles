# Dotfiles

Clone this repository into `~/.dotfiles` and apply the correct symlinks.

## Tmux

Symlink: `ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf`

1. Install [TPM](https://github.com/tmux-plugins/tpm)
2. Install plugins with `<Prefix> + I`

## Neovim

Symlink: `ln -s ~/.dotfiles/nvim/ ~/.config/nvim/`

1. Install dependencies

```sh
brew install neovim ripgrep fd lazygit
```

2. Install Packer packages

```vimscript
:PackerInstall
```

