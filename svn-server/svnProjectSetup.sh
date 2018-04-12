#!/bin/bash

cd /tmp
mkdir -p svn-guide
cd svn-guide
svn checkout http://localhost/svn/guideRepo guideRepo
cd guideRepo
mkdir trunk
mkdir branches
mkdir tags
svn add trunk
svn add branches
svn add tags
svn commit -m "Add repo folder layout"
mkdir trunk/myProject
echo "Hello World!" > trunk/myProject/README.md
svn add trunk/myProject
svn commit -m "Project initial commit"
cd /tmp
rm -fr svn-guide
