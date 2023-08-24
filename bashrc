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

pathadd PATH ${HOME}/bin
pathadd PATH ${HOME}/go/bin
pathadd PATH /global/homes/s/sleak/.gem/ruby/2.1.0/bin
pathadd PATH /global/homes/s/sleak/.gem/ruby/2.3.0/bin
pathadd PATH $PYTHONUSERBASE/bin
pathadd PATH /home/sleak/reframe/reframe/bin
#
[[ -f $HOME/Tools/slurm-helpers ]] && pathadd PYTHONPATH $HOME/Tools/slurm-helpers
