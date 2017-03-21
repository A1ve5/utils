#!/bin/bash
#
# by A1ve5 2017

for i in $(ls);
 do
   if [ -d "$i" ];
   then
      cd $i
      git status &> /dev/null
       if [ $? -eq 0 ];
         then
         echo -e "\e[31m>>>>>>>>>>\e[0m pulling \e[7m$i\e[27m "
         git pull
         cd ..
       else
         echo -e "\e[31m!!!!!!!!!!\e[0m $i is not a git repo"
         cd ..
       fi
   fi
done
