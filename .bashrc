#
# ~/.bashrc
#

[[ -d ~/.bin ]] && [[ ! ${PATH} =~ ^${HOME}/.bin: ]] && PATH="${HOME}/.bin:${PATH}"

[[ $- =~ i ]] || return

[[ -n $SSH_TTY ]] && [[ -z $TMUX ]] && tmux new-session -A -s ssh_tmux

HISTSIZE=4096

[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local

