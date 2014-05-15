op=$1
# now run a test and store its success/failure
testresult=0
if [[ ${#op} -gt 2 ]] ; then 
  rm ${op}* # cleanup
fi
exit $testresult 
