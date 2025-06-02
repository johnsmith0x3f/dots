function beetx() {
	type fd &> "/dev/null" || {
		echo "Please install fd (https://github.com/sharkdp/fd)."
		return 1
	}

	case $1 in
		quot) __beetx_quot "$2" ;;
		sort) __beetx_sort "$2" ;;
		zero) __beetx_zero "$2" ;;
	esac
}

function __beetx_quot() {
	# Find all FLAC files recursively in the given directory
	# and replace the Unicode quotes with ASCII ones in both filenames and tags.
	fd ".*" --extension "flac" "$1" | while read -r file; do
		# First replace the tags.
		metaflac --export-tags-to=- --remove-all-tags "$file" | sed "s/’/'/g" | metaflac --import-tags-from=- "$file"
		# Then rename the FLAC files.
		[[ "$file" == "${file//’/'}" ]] || mv -v "$file" "${file//’/'}"
	done
}

function __beetx_sort() {
	fd ".*" --extension "flac" "$1" | while read -r file; do
		# Sort the tags by lexicographical order.
		metaflac --export-tags-to=- --remove-all-tags "$file" | sort | metaflac --import-tags-from=- "$file"
	done
}

function __beetx_zero() {
	# Tags we want to keep, see below for details.
	local tags=(
		"ALBUM"
		"ALBUMARTIST"
		"ARTIST"
		"DATE"
		"DISCNUMBER"
		"GENRE"
		"LYRICS"
		"TITLE"
		"TRACKNUMBER"
	)

	# Storage is cheap, but not that cheap. So we remove embedded covers.
	local args=( "metaflac" "--remove" "--block-type=PICTURE" "{}" ";" )
	fd ".*" --extension "flac" "$1" --exec-batch "${args[@]}"
	# Tags are necessary, but not all tags are. So we remove all but wanted tags.
	local args=( "metaflac" "--remove-all-tags-except=${(j|=|)tags}" "{}" ";" )
	fd ".*" --extension "flac" "$1" --exec-batch "${args[@]}"
}
