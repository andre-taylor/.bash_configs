# Env secrets - Globals I'm paranoid about exposing.
if [ -f ${HOME}/.bash_configs/.secerts.sh ]; then
  . ${HOME}/.bash_configs/.secerts.sh
fi

#Env colors
if [ -f ${HOME}/.bash_configs/.colors.sh ]; then
  . ${HOME}/.bash_configs/.colors.sh
fi

# Env vavs / GIT configs / prompt configs
if [ -f ${HOME}/.bash_configs/.environment.sh ]; then
  . ${HOME}/.bash_configs/.environment.sh
fi

# Utility functions
if [ -f ${HOME}/.bash_configs/.utilities.sh ]; then
  . ${HOME}/.bash_configs/.utilities.sh
fi

# Env aliases
if [ -f ${HOME}/.bash_configs/.aliases.sh ]; then
  . ${HOME}/.bash_configs/.aliases.sh
fi

# SSH aliases
if [ -f ${HOME}/.bash_configs/.ssh_aliases.sh ]; then 
  . ${HOME}/.bash_configs/.ssh_aliases.sh
fi

# Git completion - https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ${HOME}/.bash_configs/.git-completion ]; then
  . ${HOME}/.bash_configs/.git-completion
fi

# Bash Git prompt - https://github.com/magicmonty/bash-git-prompt
if [ -f ${HOME}/.bash_configs/bash-git-prompt/gitprompt.sh ]; then
  . ${HOME}/.bash_configs/bash-git-prompt/gitprompt.sh
fi

# Silly fortune cookie
if [ -x /usr/local/bin/fortune ]; then
    /usr/local/bin/fortune -s
fi
