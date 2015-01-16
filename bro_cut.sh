#!/bin/bash


#Takes as input a bro log and opens it, well formatted, in less.
[ $# -ge 1 -a -f "$1" ] && input="$1" || input="-"
cat $input | bro-cut -d -C | column -t | less -S
