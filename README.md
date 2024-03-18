# Dotfiles

Clone this repository into `~/.dotfiles` and apply the correct symlinks.

## Kitty

Symlink: `ln -s ~/.dotfiles/kitty ~/.config/`

## Neovim

Symlink: `ln -s ~/.dotfiles/nvim/ ~/.config/`

1. Install dependencies

```sh
brew install neovim ripgrep lazygit
```

2. Install the `tsserver` language server

To install the `tsserver` use the `:Mason` command inside `nvim`
