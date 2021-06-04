#!/bin/bash
# save victim IP for CTF by @smash8tap
VICIP() { echo "$1" > /tmp/vicip; export VICIP=$(cat /tmp/vicip);}
if [ -f /tmp/vicip ]; then
	  export VICIP=$(cat /tmp/vicip);
fi 

