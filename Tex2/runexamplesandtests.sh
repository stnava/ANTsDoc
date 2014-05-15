for ee in examplesandtests/Ex*.sh ; do 
  nm=`basename $ee`
  op=output` echo $nm | cut -d '.' -f 1`
  if [[ 1 == 1 ]] ; then
  bash $ee > /dev/null 
  testnm=examplesandtests/test${nm}
  if [[ -s $testnm ]] ; then
    bash examplesandtests/test${nm} $op
  else 
    echo $testnm does not exist
  fi
  fi
  echo example $nm status $?
done
