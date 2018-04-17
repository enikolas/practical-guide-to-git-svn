#!/bin/bash

cd /tmp
mkdir -p svn-guide
cd svn-guide
svn checkout http://localhost/svn/guideRepo guideRepo
cd guideRepo
echo "Some code while you were local branching..." >> trunk/myProject/README.md
svn commit -m "Some code"
cd /tmp
rm -fr svn-guide
