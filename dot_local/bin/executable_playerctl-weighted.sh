#!/bin/bash

if [[ $(playerctl -l | grep quodlibet) == "quodlibet" ]]; then
  playerctl -p quodlibet "$@"
else
  playerctl "$@"
fi
