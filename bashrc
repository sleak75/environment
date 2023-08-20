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
pathadd ${HOME}/go/bin
pathadd /global/homes/s/sleak/.gem/ruby/2.1.0/bin
pathadd /global/homes/s/sleak/.gem/ruby/2.3.0/bin
pathadd $PYTHONUSERBASE/bin
export PATH

export PYTHONPATH=${PYTHONPATH}:$HOME/Tools/slurm-helpers
