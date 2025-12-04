## Setting some python variables
export PYTHON3=`which python3`
##
## This assumes an anaconda distribution
export PYTHON3HOME="${PYTHON3%/*/*}"
export pythonthreedll="$PYTHON3HOME/lib"
export LD_LIBRARY_PATH=$PYTHON3HOME/lib:$LD_LIBRARY_PATH

