
function sourceFile(){
if [ -f $1 ]; then
   source $1
else
  printf "404: $1 not found"
fi

}
