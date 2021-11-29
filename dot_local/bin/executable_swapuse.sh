#!/usr/bin/env bash
for file in /proc/*/status ; do awk '/Tgid|VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | grep kB  | sort -k 3 -n
