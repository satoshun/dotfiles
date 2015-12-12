# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
. `brew --prefix`/etc/profile.d/z.sh
fpath=(/usr/local/share/zsh-completions $fpath)

. $HOME/.zshenv
. $HOME/.shalias
. $HOME/.shfunc
. $HOME/.zawrc

export LANG=en_US.UTF-8

export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
export JAVA6_HOME=`/usr/libexec/java_home -v "1.6"`
export JAVA8_HOME=`/usr/libexec/java_home -v "1.8"`


if [ -f `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion ]; then
    source `brew --prefix`/etc/zsh_completion.d/subpro_zcompletion
fi
