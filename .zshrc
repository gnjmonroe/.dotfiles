source ~/.headline.zsh-theme

# add time to right of prompt
HEADLINE_DO_CLOCK=true

# show exit codes (note: meanings for 126-143 are guesses and often incorrect)
HEADLINE_DO_ERR=true
HEADLINE_DO_ERR_INFO=false

# formatting for git status and counts
HEADLINE_DO_GIT_STATUS_COUNTS=true
HEADLINE_STATUS_TO_STATUS='|'
HEADLINE_DO_GIT_STATUS_OMIT_ONE=true

# datetime format
HEADLINE_DO_CLOCK=true
# HEADLINE_CLOCK_FORMAT=${(%):-"%D{%Y년%m월%d일 %H:%M:%S}"}
HEADLINE_CLOCK_FORMAT='%Y년%m월%d일 %H:%M:%S'

HISTFILE=${ZDOTDIR:-$HOME}.zsh_history
SAVEHIST=5000
HISTSIZE=2000

# case-insensitive globs
setopt NO_CASE_GLOB

# assume cd is already inputted on filepath
setopt AUTO_CD

# corrects commands
setopt CORRECT

# correct arguments
setopt CORRECT_ALL

# add additional time/timestamp data for each history item
setopt EXTENDED_HISTORY

# share history across multiple zsh sessions
setopt SHARE_HISTORY

# append to history, rather than overwrite
setopt APPEND_HISTORY

# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# do not store duplications
setopt HIST_IGNORE_DUPS

# removes blank lines from searching
setopt HIST_REDUCE_BLANKS

# shows the substituting command before executing when using !!
setopt HIST_VERIFY

# enable case-insensitive completions
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix 

# command for initializing zsh completions
# make all completion configuration commands before this
autoload -Uz compinit && compinit

# pnpm
export PNPM_HOME="/Users/jinsoo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias pn=pnpm
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias python=python3
