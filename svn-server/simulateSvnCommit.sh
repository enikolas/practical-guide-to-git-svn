#!/bin/bash

cd /tmp
mkdir -p svn-guide
cd svn-guide
svn checkout http://localhost/svn/guideRepo guideRepo
cd guideRepo
echo "Conflict!!!" >> trunk/myProject/README.md
svn commit -m "Some conflict for you to solve it out"
cd /tmp
rm -fr svn-guide
