#!/bin/bash
echo -n "Load "; cat /proc/loadavg | cut -f1-3 -d' '
