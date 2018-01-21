#!/usr/bin/env bash

if  [[ $TRAVIS_PULL_REQUEST = "false" ]]
then
  rsync -v --recursive --inplace --delete \
	  -e "ssh -i .travis/id_rsa -o UserKnownHostsFile=.travis/known_hosts" \
	  _site/ $USERNAME@$HOST:$1/
fi
