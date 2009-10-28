#!/bin/bash

REPOS=(lmk dmz scripts cycles io mbra qmapcontrol qtsolutions)
SRC_DIR=/Users/shillcock/cm/src
GITHUB=git@github.com
USERNAME=shillcock
REMOTE=dmzdev

if [ -d $SRC_DIR ];
then
   echo "$SRC_DIR exists"
else
   echo "Creating $SRC_DIR"
   mkdir -p $SRC_DIR
fi

cd $SRC_DIR

for REPO in ${REPOS[@]}; do
   git clone ${GITHUB}:${USERNAME}/${REPO}.git
done

for REPO in ${REPOS[@]}; do
   cd ${SRC_DIR}/${REPO}
   git remote add $REMOTE ${GITHUB}:${REMOTE}/${REPO}.git
done


