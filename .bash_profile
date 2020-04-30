# .bash_profile

# Get the aliases and functions

export PATH="${PATH}:${HOME}/bin"

export BROWSER='qutebrowser'
export EDITOR='nvim'
export FEEDER='newsboat'
# export PAGER='nvim -u /usr/share/nvim/runtime/macros/less.vim'
export PAGER='less'
export PICKER='nnn'
export PLAYER='mpv'
export READER='zathura'
export SHELL='bash'
export TERM='st'
export VISUAL='nvim'
export WM='dwm'

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

export CABAL_CONFIG="${XDG_CONFIG_HOME}/cabal/config"

export GNUPGHOME="${XDG_CONFIG_HOME}/.gnupg"

export PASSWORD_STORE_DIR="${XDG_CONFIG_HOME}/.pass"

export XKB_LAYOUT='us'
export XKB_VARIANT='colemak'

export NNN_BMS='h:~;b:~/bin;s:~/src;c:~/.config;w:~/img/wallpaper'
export NNN_PLUG='W:-_feh --bg-scale $nnn*;x:_chmod +x $nnn;v:imgview;c:-_xclip -selection clipboard $nnn*;n:-_|st -e nnn $(dirname $nnn)'
export NNN_TRASH=1

[ -f $HOME/.bashrc ] && . $HOME/.bashrc
