# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Get local setting
if [ -f ~/.bash_profile.local ]; then
	. ~/.bash_profile.local
fi

# User specific environment and startup programs

export PATH=$HOME/.rbenv/bin:$HOME/.local/bin:$HOME/bin:$PATH

export EDITOR="vim"

[ -f ~/.hosts ] && export HOSTALIASES=~/.hosts

# initialize rbenv
eval "$(rbenv init -)"
