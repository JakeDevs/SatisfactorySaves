#!/bin/bash



SIG=1
SIG0=$SIG
while [ $SIG != 0 ] ; do
 while [ $SIG = $SIG0 ] ; do
   SIG=`ls -1 | md5sum | cut -c1-32`
   sleep 5m
git add .

git commit -m "normal autosave"

git push -u origin main
 done
 SIG0=$SIG
 ls -lrt | tail -n 1
done

