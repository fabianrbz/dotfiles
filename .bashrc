# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# brew
source `brew --repository`/Library/Contributions/brew_bash_completion.sh

# git
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

# colors
CYAN='\[\e[36m\]'
GREEN='\[\e[32m\]'
RESET='\[\e[0m\]'

# prompt
export PS1="\u@\h:${GREEN}\W${CYAN}\$(__git_ps1)${RESET}$ "

# ls color
alias ls='ls -G'

# git
alias gst='git status'
alias gck='git checkout'

# bundler
alias be='bundle exec'
alias bake='bundle exec rake'

# history
shopt -s histappend
shopt -s cmdhist
PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"

# cd
complete -d cd
shopt -s cdspell

# grep
export GREP_OPTIONS='--color=always'
