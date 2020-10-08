#!/bin/bash
git add *
nowdate=`date +"%Y-%m-%d__%H:%M:%S"`
git commit -a -m "${nowdate}"
git push
