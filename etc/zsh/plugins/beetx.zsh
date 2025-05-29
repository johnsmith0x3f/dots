function beetx() {
	type fd &> "/dev/null" || {
		echo "Please install fd (https://github.com/sharkdp/fd)."
		return 1
	}

	case $1 in
		sort) __beetx_sort "$2" ;;
		zero) __beetx_zero "$2" ;;
	esac
}

function __beetx_sort() {
	fd ".*" --extension "flac" "$1" | while read -r flac; do
		metaflac --export-tags-to=- --remove-all-tags "$flac" |
		sort |
		metaflac --import-tags-from=- "$flac"
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
