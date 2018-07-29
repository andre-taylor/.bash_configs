# Env secrets - Globals I'm paranoid about exposing.
if [ -f ${HOME}/.bash_configs/src/.secerts.sh ]; then
  . ${HOME}/.bash_configs/src/.secerts.sh
fi

# Env colors
if [ -f ${HOME}/.bash_configs/src/.colors.sh ]; then
  . ${HOME}/.bash_configs/src/.colors.sh
fi

# Env vavs / GIT configs / prompt configs
if [ -f ${HOME}/.bash_configs/src/.environment.sh ]; then
  . ${HOME}/.bash_configs/src/.environment.sh
fi

# Utility functions
if [ -f ${HOME}/.bash_configs/src/.utilities.sh ]; then
  . ${HOME}/.bash_configs/src/.utilities.sh
fi

# Env aliases
if [ -f ${HOME}/.bash_configs/src/.aliases.sh ]; then
  . ${HOME}/.bash_configs/src/.aliases.sh
fi

# SSH aliases
if [ -f ${HOME}/.bash_configs/src/.ssh_aliases.sh ]; then 
  . ${HOME}/.bash_configs/src/.ssh_aliases.sh
fi

# Git completion - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ${HOME}/.bash_configs/src/.git-completion ]; then
  . ${HOME}/.bash_configs/src/.git-completion
fi

# Bash Git prompt - https://github.com/magicmonty/bash-git-prompt
if [ -f ${HOME}/.bash_configs/src/bash-git-prompt/gitprompt.sh ]; then
  . ${HOME}/.bash_configs/src/bash-git-prompt/gitprompt.sh
fi

# Silly fortune cookie
if [ -x /usr/local/bin/fortune ]; then
    /usr/local/bin/fortune -s
fi
