#!/bin/bash

# Download Assets

# Cycles
wget --no-check-certificate https://dmzdev.org/attachments/download/100/cycles-assets.zip

if [ "${?}" -ne "0" ]; then
	echo "Cycles assets was not completely downloaded, so the installation cannot go on. Please retry."
	rm cycles-assets.zip 
  exit
fi

# Hoverover
wget --no-check-certificate https://dmzdev.org/attachments/download/30/io-assets.zip

if [ "${?}" -ne "0" ]; then
	echo "IO assets was not completely downloaded, so the installation cannot go on. Please retry."
	rm io-assets.zip 
  exit
fi

