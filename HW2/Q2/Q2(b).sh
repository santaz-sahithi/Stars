
 git init

 branch[0]= " master "
 branch[1]= " 11940010 "
 branch[2]= " 11940230 "
 branch[3]= " 11941140 "
 lastcommitbranch = $(git branch --sort =-committerdate | awk âNR ==1 â | awk â{ print $2 }â)
 echo $lastcommitbranch
 for (( i =0; i <4; i ++)) ; do
  if [[ $lastcommitbranch != ${branch[$i]} ]]; then
  echo ${branch[$i]}
  git merge ${branch[$i]} -m" merging "
  git-graph --nodes clhrsagu
  echo " Press enter to continue merging "
  read en
  fi
 done
