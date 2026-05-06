#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias vi=nvim
alias ll='ls -al'

export PATH=$PATH:~/bin/:~/.local/bin

# execute starship
eval "$(starship init bash)"

# ASDF
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

. <(asdf completion bash)

# Kick off the ssh agent
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  ssh-agent -t 1h >"$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [ ! -f "$SSH_AUTH_SOCK" ]; then
  source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

source '/home/bmw/.bash_completions/comfy.sh'
. ~/.asdf/plugins/java/set-java-home.bash
