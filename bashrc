[[ -z $_utils_defined && -f $HOME/.bash_utils ]] && source $HOME/.bash_utils

pathadd () {
  if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
    if [[ "$1" == "-a" ]] ; then
      PATH="$PATH:$2"
    elif [[ "$1" == "-p" ]] ; then
      PATH="$2:$PATH"
    else
      PATH="$PATH:$1"
    fi
  fi
}

pathadd ${HOME}/bin
export PATH

# ugh I don't like that this is in bashrc but it seems necessary
# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/steve/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/steve/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/opt/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/opt/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/opt/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

