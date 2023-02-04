#!/bin/bash

hugo
cp -r ./public/* ../svalade.github.io/
cp .gitignore ../svalade.github.io/
cd ../svalade.github.io/
# git add .
# git commit -m "website update on `date`"
# git push origin master
