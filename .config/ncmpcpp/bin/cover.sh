#!/bin/sh

cover="${HOME}/Music/$( ncmpcpp --current-song="%F" 2>/dev/null )"
cover="${cover%/*}/$( ls "${cover%/*}" | grep -E "(cover|folder).(jpeg|jpg|png)" )"

echo "$cover"
