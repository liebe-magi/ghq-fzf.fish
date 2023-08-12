# ghq-fzf.fish

Browse and move to the git directory using fzf.

## Installation

- Install [ghq](https://github.com/x-motemen/ghq), [fzf](https://github.com/junegunn/fzf) and [bat](https://github.com/sharkdp/bat)
- Install this plugin using [fisher](https://github.com/jorgebucaran/fisher):

```
fisher install liebe-magi/ghq-fzf.fish
```

## Set keybindings

Add following texts to `~/.config/fish/conf.d/fish_user_keybindings.fish`

```
function fish_user_key_bindings
    # move to git dir --> ctrl-g
    bind \cG ghq-fzf
end
```

## Usage

- Press a key that you have defined, and you can browse and move to the git directory.
