# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
. `brew --prefix`/etc/profile.d/z.sh
fpath=(/usr/local/share/zsh-completions $fpath)

. $HOME/.zawrc
. $HOME/.shalias
. $HOME/.shfunc
. $HOME/.bash_rc

export LANG=en_US.UTF-8
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

if [ -f `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion ]; then
    source `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion
fi
#. <(azure --completion)
