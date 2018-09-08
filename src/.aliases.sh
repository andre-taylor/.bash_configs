#-------------------------------------------------------------
# General aliases
#-------------------------------------------------------------
alias h="cd ~"                              # User home directory
alias ..="cd .."                            # Shortcut, go up one directory
alias ...="cd ../.."                        # Shortcut, go up two directories
alias ....="cd ../../.."                    # Shortcut, go up three directories
alias p="cd -"                              # Previous directory
alias c="clear"                             # Clear screen (pseudo)
alias cc="source ${HOME}/.bash_profile"     # Reload BASH profile
alias rtrash="srm -rf ${CONFIG_DIR_TRASH}*" # Securely Delete trash
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"   # Display directory contents in a tree view
alias airport="airport -Is"                 # Displays current wifi connection and scans for available wifi ssid
alias purge="sudo purge"                    # Force disk cache to be purged (flushed and emptied)
alias path="echo -e ${PATH//:/\\\n}"        # Pretty-print of some PATH variables:
alias du="du -kh"                           # Displays disk usage stats in more readable output. Block counts, human readable
alias df="df -kTh"                          # Displays free disk space. Use 1k blocks, only print file systems of specific type, human readable
alias rm="rm -i"                            # Remove directory entries. Ask for confirmation
alias rmf="rm -Rf"                          # Remove directory entries. Recursive, force
alias cp="cp -iR"                           # Copy directory entries. Prompt for confirmation, recursive
alias mv="mv -i"                            # Move directory entries. Prompt for confirmation.
alias mkdir="mkdir -p"                      # Prevents accidentally clobbering files.
alias hh="history"                          # CL history
alias which="type -a"                       # Locate a program in user path. List all

alias ll="ls -alhF"                         # List all, long listing format, human readable file size, special file indicators 
alias lk="ll -Sr"                           # Sort by size, biggest last.
alias lt="ll -tr"                           # Sort by date, most recent last.
alias lc="ll -tcr"                          # Sort by/show change time,most recent last.
alias lu="ll -tur"                          # Sort by/show access time,most recent last.
alias lm="ll | less"                        # Pipe through 'more'
alias lr="ll -R"                            # Recursive ls.
alias la="ll -A"                            # Show hidden files.

#-------------------------------------------------------------
# Directory aliases
#-------------------------------------------------------------
alias pj="cd ${CONFIG_DIR_PROJECTS}"
alias yc="cd ${CONFIG_DIR_PROJECT_YAMMER_CLIENTS}"
alias yj="cd ${CONFIG_DIR_PROJECT_YAMJS}"
alias yui="cd ${CONFIG_DIR_PROJECT_YAMUI}"
alias wf="cd ${CONFIG_DIR_PROJECT_WORKFEED}"

#-------------------------------------------------------------
# GIT aliases
#-------------------------------------------------------------
alias gst="git status -s"                    # Short view
alias gstl="git status"                      # default view
alias gco="git checkout"
alias gl="git pull"
alias gp="git push"
alias gd="git diff"
alias gb="git branch"
alias gcp="git cherry-pick"
alias gash="git stash"
alias gasha="git stash apply"
alias gph="git_prompt_help"
alias gpe="git_prompt_examples"
alias gpc="git_prompt_color_samples"
