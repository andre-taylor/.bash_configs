# Import global bashrc
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Import ~/.bashrc
if [ -f ~/.bashrc ]; then 
  . ~/.bashrc 
fi
