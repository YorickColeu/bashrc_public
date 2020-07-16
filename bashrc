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
alias yor_git_melddiff='git difftool -t meld --dir-diff'
alias yor_git_patch_forceapply='git apply --reject --whitespace=fix'
alias yor_git_update_master='git checkout master ; git pull ; git checkout -'
alias yor_inotify='inotifywait -rm ./'
alias yor_source='source ~/.bashrc'
alias yor_ssh='ssh -R 52698:localhost:52698'
alias yor_serial='sudo minicom -D /dev/ttyUSB0 -C /tmp/minicomtrace_$(date +%s).txt'
# Kvm
alias yor_kvm_list_osvariant='osinfo-query os'
# Network
alias yor_net_list_ports='sudo netstat -tulpn'

#
# Micro-aliases for over used commands
#
alias l="ls -laF"

alias g="grep"
alias gl="grep -l"
alias gw="grep -w"
alias gwl="grep -wl"
alias gr="grep -r"
alias grl="grep -rl"
alias grw="grep -rw"
alias grwl="grep -rwl"
alias gi="grep -i"
alias gil="grep -il"
alias giw="grep -iw"
alias giwl="grep -iwl"
alias gri="grep -ri"
alias gril="grep -ril"
alias griw="grep -riw"
alias griwl="grep -riwl"

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
