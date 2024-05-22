# ~/.config/zsh/.zshrc
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

autoload -U colors && colors
autoload -U compinit promptinit

zmodload zsh/complist
_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle :compinstall filename "${ZDOTDIR:-$HOME}/.zshrc"
compinit

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

setopt prompt_subst
autoload -Uz add-zsh-hook vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
export PROMPT="ー頃旎 %n: %B%F{#b1d2f0}%1~%f%b "
export RPROMPT=\${vcs_info_msg_0_}
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%b%u%c'

zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' check-for-changes true
setopt combining_chars
setopt globdots

export ZENO_HOME="${XDG_CONFIG_HOME}/zeno"
source $ZENO_HOME/.zenorc

# CLICOLOR=1
# LSCOLORS=exfxcxdxbxegedabagacad
# 'gxfxcxdxbxegedabagacad' is standard #f1f6b8

# Config imports
LFCD="$GOPATH/src/github.com/gokcehan/lf/etc/lfcd.sh"  # source
LFCD="/path/to/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi


# Plugin load order
zinit ice lucid wait
zinit light zsh-users/zsh-autosuggestions
zinit ice lucid wait "1"
zinit light marlonrichert/zsh-autocomplete

zinit as"completion" wait light-mode lucid for \
   nix-community/nix-zsh-completions \
   greymd/docker-zsh-completion \
   chrishrb/zsh-kubectl \
   dabz/kafka-zsh-completions
   # sigoden/argc-completions \

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' verbose yes
zinit wait lucid for \
   chisui/zsh-nix-shell \
   coot/zsh-haskell
# zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh

zinit wait"1" lucid for \
   tarrasch/zsh-bd

zinit wait"1" lucid for \
   zsh-git-prompt/zsh-git-prompt \
   zdharma-continuum/fast-syntax-highlighting \
   tom-auger/cmdtime

# zeno.zsh
zinit lucid wait depth"1" blockf for \
   yuki-yano/zeno.zsh



# External files
source $ZDOTDIR/.aliases
source $ZDOTDIR/.zbindings
source $ZDOTDIR/.zdefn

eval "$(direnv hook zsh)"

export ext_dir="/wpa/.work.d/system/nixos-config"
# Changing from time to time
export PROXY_CURRENT="http://DXf2sxr5:2EVysff7@103.163.53.91:64692"
proxy.onboard
