if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH=$PATH:/usr/local/Cellar/smlnj/110.73/libexec/bin
export PS1="[\e[0;34m\w\e[m] "