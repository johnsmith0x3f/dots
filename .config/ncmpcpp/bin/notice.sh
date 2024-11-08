#!/bin/sh

cover="${HOME}/Music/$( ncmpcpp --current-song="%F" 2>/dev/null )"
cover="${cover%/*}/$( ls "${cover%/*}" | grep -E -i "(cover|folder).(jpeg|jpg|png)" )"

notify-send -i "${cover}" "Now Playing" "$( ncmpcpp --current-song="%t - %a" 2>/dev/null )"
