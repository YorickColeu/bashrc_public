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
alias yor_ssh='ssh -R 52698:localhost:52698'
alias yor_serial='sudo minicom -D /dev/ttyUSB0 -C /tmp/minicomtrace_$(date +%s).txt'
