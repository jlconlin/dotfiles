# Adding default Python for Mac
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "I'm a Python Darwin"
  export PATH="/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/bin:${PATH}"
fi
# Setting some python variables
# This assumes an anaconda distribution
export PYTHON3=`which python3`
export PYTHON3HOME="${PYTHON3%/*/*}"
export pythonthreedll="$PYTHON3HOME/lib"
export LD_LIBRARY_PATH=$PYTHON3HOME/lib:$LD_LIBRARY_PATH
