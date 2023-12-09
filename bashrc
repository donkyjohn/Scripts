# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH=$PATH:/home/guest/Scripts


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#environmental variables
PINGU=tux
export PINGU=$PINGU

#myALIAS

alias nb='nano /home/guest/.bashrc'
alias sb='source /home/guest/.bashrc'
alias sh='nano /home/guest/.bash.sh'
alias run='bash'
alias showall='ls -al'
alias show='ls'
alias copy='cp'
alias goto='cd'
alias newf='touch'
alias newd='mkdir'
alias rmd='rm -rf'
alias securelogin='ssh benjaminh@172.21.73.10'
alias password='echo d5J6Tehb'
alias myalias="cat /home/guest/.bashrc | grep 'alias'"
alias upgrade='echo howest2023 | sudo -S dnf upgrade -y >> /var/tmp/update.log'
alias search='grep'
alias searchcmd='which'
alias findfile='run /home/guest/Scripts/Tryouts/findfile'
alias finddir='find / -type d -name 2>/dev/null'
alias jump='. gotofiledir'
alias ..='cd ..'

#mylayout
toilet -f smblock --filter border:gay 'ツ        Welcome back        ツ' 
echo "                  「 ✦ CHUPAPI MUNYANYO ✦ 」"
export PS1='\[\e[1;31m\]You \e[1;33m\](\u) \e[1;32m\]are \[\e[1;31m\]currently \e[1;35m\]working in: \[\e[1;36m\]\w \[\e[34m\]$ \[\e[0m\]'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# docker setup

echo howest2023 | sudo -S systemctl start docker > /var/tmp/docker.log
eval "$(starship init bash)"
