# User additions to .bash_profile go in this file
[[ -z $_utils_defined && -f $HOME/.bash_utils ]] && source $HOME/.bash_utils
[[ -z $_slurm_helpers_defined && -f $HOME/.slurm_utils ]] && source $HOME/.slurm_utils

PS1='\[\e[1m\]\A \u@${STY%.*}${STY+.}${NERSC_HOST:-$(uname -n)}-\h:$(dirtag 2>/dev/null)\W\$\[\e[0m\] '

# python3 environments install their own sqlite3 client without readline,
# which is quite annoying, so make sure to use the system sqlite3 exec:
alias sqlite3=/usr/bin/sqlite3

# i prefer tabs ..
alias vi='vim -p'
alias view='vim -p -R'

export PS_FORMAT=user,pgid,ppid,pid,nlwp,pcpu,rss,stime,s,wchan:10,cmd
#alias ps='ps -H'
#alias ps='ps -H -o user,pgid,ppid,pid,nlwp,pcpu,rss,etimes,s,wchan,cmd --sort user,pgid'

export LESS="-M -I -R -F -X"

# programmable completion in bash >=4.3 has a bundle of misfeatures
# that render it annoyingly unusable, disable it:
shopt -u progcomp

# don't exit the shell when i hit ^D (because it's probably because I
# was trying to page-down while not in vim)
export IGNOREEOF=1
