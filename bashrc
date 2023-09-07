[[ -z $_utils_defined && -f $HOME/.bash_utils ]] && source $HOME/.bash_utils


pathadd () {
  local prepend=false
  if [[ "$1" == "-a" ]]; then
    shift
  elif [[ "$1" == "-p" ]]; then
    prepend=true
    shift
  fi
  [[ -d $2 ]] || return
  if ! echo "${!1}" | /bin/grep -Eq "(^|:)$2($|:)" ; then
    if $prepend ; then
      ${1}=${2}:${!1}
    else
      export ${1}=${!1}:${2}
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

