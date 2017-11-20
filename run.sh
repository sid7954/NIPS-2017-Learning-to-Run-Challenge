#!/bin/bash

for filename in ~/Desktop/tmp/*.py; do
    cp $filename .
    git add .
    git commit -m "Added file $filename to NIPS 2017 Learning to Run RL Challenge"
    GIT_COMMITTER_DATE="Mon 9 Jul 2018 20:19:19 BST" git commit --amend --no-edit --date "Mon 9 Jul 2018 20:19:19 BST"
done
git push origin master