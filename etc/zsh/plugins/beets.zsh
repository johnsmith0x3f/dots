function rip-cover() {
	local coma=( "metaflac" "--remove" "--block-type=PICTURE" "{}" ";" )
	fd ".*" "$1" -e "flac" -x "${coma[@]}" || find "$1" -type "f" -name "*.flac" -exec "${coma[@]}"
}

function sort-tags() {
	fd ".*" "$1" -e "flac" | while read -r flac; do
		metaflac --export-tags-to=- --remove-all-tags $flac | sort | metaflac --import-tags-from=- $flac
	done
}

function zero-tags() {
	# Set the tags to preserve.
	local tags="ALBUM=ALBUMARTIST=ARTIST=DATE=DISCNUMBER=GENRE=LYRICS=TITLE=TRACKNUMBER"
	# Set the command to execute (as array).
	local coma=( "metaflac" "--remove-all-tags-except=$tags" "{}" ";" )

	fd ".*" "$1" -e "flac" -x "${coma[@]}" || find "$1" -type "f" -name "*.flac" -exec "${coma[@]}"
}
