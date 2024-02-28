# Dotfiles

Clone this repository into `~/.dotfiles` and apply the correct symlinks.

## ZSH

Symlink: `ln -s ~/.dotfiles/.zshrc ~/.zshrc`

1. Install the following plugins: [powerlevel10k](https://github.com/romkatv/powerlevel10k), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

## Tmux

Symlink: `ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf`

1. Install [TPM](https://github.com/tmux-plugins/tpm)
2. Install plugins with `<Prefix> + I`

## Kitty

Symlink: `ln -s ~/.dotfiles/kitty ~/.config/kitty`

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
