# PATH update
export PATH=$HOME/bin:/usr/local/bin:$PATH

########################################################################################
# oh-my-zsh init
export ZSH="/home/n42/.oh-my-zsh"

# Powerlevel10k init
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh use p10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# automatically update without prompting
DISABLE_UPDATE_PROMPT="true"

# enable command auto-correction
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
########################################################################################

export EDITOR='vim'
export MANPATH="/usr/local/man:$MANPATH"
export ARCHFLAGS="-arch x86_64"
export LANG=en_US.UTF-8

if [ -f "$HOME/.zsh_aliases" ]; then
       source $HOME/.zsh_aliases;
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh;
fi

# . /home/n42/.local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "${HOME}/.p10k.zsh" ]] || source "${HOME}/.p10k.zsh";


PATH=$PATH:/home/n42/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 EED804F6-5843-E610-9D65-EB8CB46D4D30

[[ ! -f "${HOME}/.local/etc/git_config/git_config.sh" ]] || source "${HOME}/.local/etc/git_config/git_config.sh";
