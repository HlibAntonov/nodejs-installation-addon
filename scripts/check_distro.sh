#!/bin/bash

glibcMinVersion=2.28; 
glibcVersion=$(rpm -q glibc | awk -F '-' '{print $2}'); 
if awk "BEGIN {exit !(${glibcVersion} < ${glibcMinVersion})}"; then
    echo "Non-supported"; exit 0; 
fi    
