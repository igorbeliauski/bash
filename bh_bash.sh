#!/bin/bash
git clone git@github.com:igorbeliauski/bh_bash_git.git new_dir
cd new_dir
old_tag=`git describe`
if [ `echo $old_tag | awk '{print length}'` -gt 5 ];
then new_tag=`echo $old_tag | awk -F '.' '{print $1"."$2"."$3+1}'`; add_new_tag=`git tag -a $new_tag -m 'New tag'`;
push_tag=`git push origin --tag`;
else echo "No changer"
fi	
cd ..
rm -rf new_dir