# begin .bashrc.ext
[ -e $HOME/.dbgdot ] && echo "entering .bashrc.ext" >&2
[ -e $HOME/.dbgdot ] && which ftn
[ -e $HOME/.dbgdot ] && module list
[ -e $HOME/.dbgdot ] && echo $PROFILEREAD 
#module unload darshan
 
##[[ "$NERSC_HOST" == "gerty" ]] || echo "not on gerty"
#[[ "$NERSC_HOST" == "gerty" ]] || module use $HOME/Software/modulefiles/steve-modulefiles
if [[ -e /etc/nersc_modules_rev ]]; then
  module use $HOME/Software/modulefiles/steve-modulefiles/$(cat /etc/nersc_modules_rev)
elif [[ "$NERSC_HOST" == "mullerv2" ]]; then
  module use $HOME/Software/modulefiles/steve-modulefiles/cos1.3
fi
export RESDATA=/global/cscratch1/res_data/

#testing:
#export SPACK_USER_PREFERRED_BASE=$HOME/tmp-dummy-sw
# test with gnu parallel
#module load parallel
#source /usr/common/software/parallel/20170822/bin/env_parallel.bash

#salloc () { salloc $* srun -n1 -N1 --mem-per-cpu=0 --pty --mpi=none --cpu_bind=none  $SHELL -l }

# User additions to .bashrc go in this file
[[ -z $_utils_defined ]] && source $HOME/.bash_utils

#export PATH=${PATH}:${HOME}/bin:${HOME}/.local/edison/2.7.9/bin
#export PATH=${PATH}:${HOME}/bin:${HOME}/go/bin:/global/homes/s/sleak/.gem/ruby/2.1.0/bin:/global/homes/s/sleak/.gem/ruby/2.3.0/bin:$PYTHONUSERBASE/bin
pathadd ${HOME}/bin
pathadd ${HOME}/go/bin
pathadd /global/homes/s/sleak/.gem/ruby/2.1.0/bin
pathadd /global/homes/s/sleak/.gem/ruby/2.3.0/bin
pathadd $PYTHONUSERBASE/bin
#pathadd $HOME/Tools/Spack/spack/bin
export PATH

#grep -q python <<< "$LOADEDMODULES" || export PATH=${PATH}:${HOME}/.local/bin
#export PATH=${PATH}:${HOME}/bin:${HOME}/.local/bin:/global/homes/s/sleak/.gem/ruby/2.1.0/bin:/global/homes/s/sleak/.gem/ruby/2.3.0/bin
#for d in ${HOME}/.local/${NERSC_HOST}/* ; do
#  export PATH=${PATH}:$d/bin
#  for d1 in $(find $d -name site-packages); do
#    export PYTHONPATH=${PYTHONPATH}:$d1
#  done
#done
export PYTHONPATH=${PYTHONPATH}:$HOME/Tools/slurm-helpers
#:${HOME}/.local/${NERSC_HOST}/2.7.9/bin
#echo $PATH
#export CSCRATCH=/global/cscratch1/sd/sleak
# this confuses ACME:
#export PROJECT=/project/projectdirs/mpccc/sleak

# gerty scratch:
if [[ -z $SCRATCH && "$NERSC_HOST" == "gerty" ]]; then
    export SCRATCH=/global/gscratch1/sd/sleak
fi

#set -o vi
# Un-comment and modify the following template for system-specific
# personal settings.
#
# if [ "$NERSC_HOST" == "edison" ]
# then
#   export MY_ENV_VAR="my_val"
# fi
#module list

[ -e $HOME/.dbgdot ] && echo "exiting .bashrc.ext" >&2
[ -e $HOME/.dbgdot ] && which ftn
[ -e $HOME/.dbgdot ] && module list
# end .bashrc.ext
