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

#
# Micro-aliases for over used commands
#
alias l="ls -laF"

alias g="grep"
alias gr="grep -r"
alias gi="grep -i"
alias gri="grep -ri"

alias f="find -name"
alias fy="find -iname"

alias c="code"
alias cdif="code --diff"

alias x="xargs"

#
# OTHERS
#
# Open tmux automatically
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
