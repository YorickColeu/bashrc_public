# This is the public Yorick Coleu bashrc file

#
# Exports
#
export TMUX_CONF=$HOME/.config/tmux_conf/.tmux.conf

#
# Aliases
#
alias grep="grep --color=auto"
alias ll="ls -laF"
alias tmux="tmux -f $TMUX_CONF"
