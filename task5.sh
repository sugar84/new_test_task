#!/usr/bin/bash


DIR='/var/logs/archive'
ARCHIVE='backup.tar.gz'

cd $DIR

chmod a+w $DIR

tar xzf $ARCHIVE

find ./ -name "*.tmp" | xargs rm

find ./ -type f -name "*" -exec grep -l "user deleted" {} \;
