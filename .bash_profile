export PATH="/usr/local/bin:$PATH"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:/Users/Vinh/infer-osx-v0.1.0/infer/infer/bin"  
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source "$HOME/.cargo/env"


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####



source /Users/Vinh/.config/broot/launcher/bash/br
