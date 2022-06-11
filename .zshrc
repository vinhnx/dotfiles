# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LC_ALL="en_US.UTF-8"

# flutter: very_good_cli
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Golang PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

alias togo="/Users/Vinh/go/src/github.com/vinhnx"

# git stash save && git stash apply
alias stash="git stash save && git stash apply"

# curl fix
unsetopt nomatch

# Optionally set DEFAULT_USER in ~/.zshrc to your regular username to hide the “user@hostname” info when you’re logged in as yourself on your local machine.
DEFAULT_USER="Vinh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="tjkirch"
# ZSH_THEME="agnoster" # for empty pure prompt
ZSH_THEME="" # for empty pure prompt

# If you added the previous alias, use a text editor to update the line to the following 
alias python=/usr/local/bin/python3
alias man="tldr"
alias m="mmm" # https://github.com/dduan/mmm
# Swift Package Manager alias
alias spm_init_exe="swift package init --type executable"

# https://github.com/koalaman/shellcheck
alias check="shellcheck"
# vapor (swift server framework)
alias vbnr="vapor build && vapor run"

# alias to https://github.com/keith/mkgpx
alias simloc='mkgpx'

# pod
alias pi="pod install --verbose"

# ccat: https://github.com/jingweno/ccat
# bat: https://github.com/sharkdp/bat
alias cat=bat
alias lsa='exa -alh'
alias ls='exa'

# hub
# alias git=hub
# liftoff
# alias liftoff="liftoff --template swift"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias ˜="~"
# alias home="~"
alias rake="noglob rake"
# alias toblog="~/Developer/site"

#alias xcodebuild="xcodebuild | xcpretty"

# lastpass

# increment build version number
#alias bump="agvtool next-version -all -increment-minor-version"

# set marketing version number
#"agvtool new-marketing-version"

# sublimetext
alias sub="subl"

# mdp - markdown presentation tool in CLI
alias present="mdp"

# alias man to tldr
# alias man="tldr"

# https://github.com/finestructure/Arena
alias playground="arena"
# alias xcode="swiftplate"
alias tools="~/tools"

# alias play to testdrive (https://github.com/JohnSundell/TestDrive)
alias play="testdrive"
# fastlane
alias fast="bundle exec fastlane"
# dotfiles dir
alias dotfiles="~/dotfiles"
# dev dir
alias todev="~/dev"
# freelance
alias tofree="~/Developer/Freelance"
# work dir
alias towork="~/Developer/@work"
alias totest="~/Developer/test-place"
# learn dir
alias tolearn="~/Developer/learn-by-doing"
# iOS helper
alias tohelp="~/Developer/iOS-helpers"
# boxen dir
alias toboxen="cd /opt/boxen/repo"
# documents
alias todoc="~/Documents/"
# documents
alias topresent="~/Documents/Presentations"
# blog dir
#alias toblog="cd ~/write/websites/blog"
# to me
alias tome="~/Developer/mine"
# keybase.io
alias kb="keybase"
alias toapps="/Applications"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git git-extras pod brew)
plugins=(git git-extras pod brew zsh-syntax-highlighting git-open)
# plugins+=(zsh-autosuggestions)

plugins+=(zsh-completions)
# plugins+=(git-prompt)
autoload -U compinit && compinit

# zsh-autosuggestion
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh
# PROMPT='%B%m%~%b$(git_super_status) %# '

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"

################################
# IMPORTANT, use git from brew #
################################
export PATH="/usr/local/bin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# z
. /Users/Vinh/z/z.sh

# Open the first Xcode workspace or project found
# function xc {
#     echo "tips: use |xed .| instead (it is Xcode invocation tool, see man page)"
#     xed .
# }

# export PATH="$PATH:/Users/Vinh/infer-osx-v0.1.1/infer/infer/bin"  

# https://github.com/pindexis/qfc Quick Command-line File Completion
# [[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

# https://guides.cocoapods.org/using/getting-started.html#sudo-less-installation
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# ovewrite system Ruby with rbenv's Ruby version (currently at 4/1/17 ruby 2.4.0 has problem with Cocoapods)
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# https://github.com/sindresorhus/pure#getting-started
# NOTE: oh-my-zsh overrides the prompt so Pure must be activated after source $ZSH/oh-my-zsh.sh.
autoload -U promptinit; promptinit
prompt pure
PROMPT='%F{white}%* '$PROMPT # show clock https://github.com/sindresorhus/pure/wiki#show-system-time-in-prompt
# prompt_newline='%666v' # oneline prompt
# PROMPT=" $PROMPT" 
#PURE_GIT_DOWN_ARROW='⇣'
#PURE_GIT_UP_ARROW='⇡'

# combine mkdir & cd
# mkcdir ()
# {
#     mkdir -p -- "$1" &&
#       cd -P -- "$1" || exit
# }
# alias mkdir=mkcdir 

# function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fpath=(~/.zsh $fpath)

# zsh-syntax-highlighting
# source /Users/Vinh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# How can I open a Terminal window directly from my current Finder location?
# https://apple.stackexchange.com/a/62445/218872
cdf() {
  cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"
}

# https://github.com/nvbn/thefuck
# eval $(thefuck --alias fix)
alias pip="/usr/local/bin/pip3"

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# gitignore.io
# function gitignore() { touch .gitignore && curl -sLw n https://www.gitignore.io/api/$@ >> .gitignore }

# secretive https://github.com/maxgoedjen/secretive
# export SSH_AUTH_SOCK=/Users/Vinh/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

# ==> Caveats
# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
#   export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use
# OpenSSL <1.1.
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

source /Users/Vinh/.config/broot/launcher/bash/br

# flutter
export PATH="$PATH:$HOME/Developer/flutter/bin"
alias config='/usr/bin/git --git-dir=/Users/Vinh/.cfg/ --work-tree=/Users/Vinh'
