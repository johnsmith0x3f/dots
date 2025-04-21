function mintags() {
	# Set the tags to preserve.
	local tags="ALBUM=ALBUMARTIST=ARTIST=DATE=DISCNUMBER=GENRE=TITLE=TRACKNUMBER"
	# Set the command to execute (as array).
	local coma=( "metaflac" "--remove-all-tags-except=$tags" "{}" ";" )

	fd "" "$1" -e "flac" -x "${coma[@]}" || find "$1" -type "f" -name "*.flac" -exec "${coma[@]}"
}
