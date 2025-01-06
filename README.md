# Dotfiles

Clone this repository into `~/.dotfiles` and apply the correct symlinks.

## Ghostty

Symlink: `ln -s ~/.dotfiles/ghostty/ ~/.config/`

## Neovim

Symlink: `ln -s ~/.dotfiles/nvim/ ~/.config/`

1. Install dependencies

```sh
brew install neovim ripgrep lazygit
```

2. Install the `tsserver` language server

To install the `tsserver` use the `:Mason` command inside `nvim`
