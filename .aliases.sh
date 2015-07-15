# General aliases
alias hh="cd ~"
alias c="clear"
alias cc="source ${HOME}/.bash_profile"
alias trash="rm -rf ${CONFIG_DIR_TRASH}*"
alias strash="srm -rf ${CONFIG_DIR_TRASH}*" # Securely delete trash
alias more="less"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias airport="airport -s"
alias purge="sudo purge" # Force disk cache to be purged (flushed and emptied)

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ll="ls -alhF"
alias lk="ll -lSr"         # Sort by size, biggest last.
alias lt="ll -ltr"         # Sort by date, most recent last.
alias lc="ll -ltcr"        # Sort by/show change time,most recent last.
alias lu="ll -ltur"        # Sort by/show access time,most recent last.
alias lm="ll |more"        # Pipe through 'more'
alias lr="ll -R"           # Recursive ls.
alias la="ll -A"           # Show hidden files.

alias du="du -kh"          # Makes a more readable output.
alias df="df -kTh"
alias rm="rm -i"
alias rmf="rm -Rf"
alias cp="cp -iR"
alias mv="mv -i"
alias mkdir="mkdir -p"     # Prevents accidentally clobbering files.
alias h="history"
alias j="jobs -l"
alias which="type -a"
alias ..="cd .."

## Pretty-print of some PATH variables:
alias path="echo -e ${PATH//:/\\\n}"

# Directory aliases
alias vg="cd ${CONFIG_DIR_DEV_ENV}"
alias wf="cd ${CONFIG_DIR_PROJECT_WORKFEED}"
alias yj="cd ${CONFIG_DIR_PROJECT_YAMJS}"
alias yk="cd ${CONFIG_DIR_PROJECT_YAMIK}"
alias code="cd ${CONFIG_DIR_CODE}"

# GIT aliases
alias gst="git status -s"
alias gstl="git status" # default view
alias gco="git checkout"
alias gl="git pull"
alias gp="git push"
alias gd="git diff"
alias gb="git branch"
alias gcp="git cherry-pick"
alias gash="git stash"
alias gasha="git stash apply"

# BASH GIT Prompt aliases
alias gph="git_prompt_help"
alias gpe="git_prompt_examples"
alias gpc="git_prompt_color_samples"

# GIT personal aliases
alias gint="git branch -D ${CONFIG_BRANCH_INTSF} && git checkout -b ${CONFIG_BRANCH_INTSF} && git push -f origin ${CONFIG_BRANCH_INTSF}"
alias gben="git branch -D ${CONFIG_BRANCH_BENSF} && git checkout -b ${CONFIG_BRANCH_BENSF} && git push -f origin ${CONFIG_BRANCH_BENSF}"
