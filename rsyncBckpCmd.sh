#!/bin/bash
#
# Script that syncs folders between my Desktop and Laptop
#
##

rsync -avzP --exclude=Downloads/ --exclude=.cache/ --delete -e ssh /home/lalves/ $1@$2:/home/$1/LIP_HOME/
