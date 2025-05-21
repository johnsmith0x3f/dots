n() {
	# Block nesting of nnn in subshells.
	[ "${NNNLVL:-0}" -eq 0 ] || {
		echo "nnn is already running"
		return
	}

	# This behavior is set to cd on quit (nnn checks if NNN_TMPFILE is set).
	export NNN_TMPFILE="/tmp/nnn_last"

	# The command builtin allows one to alias nnn to n.
	env LC_COLLATE="C" nnn "$@"

	[ ! -f "${NNN_TMPFILE}" ] || {
		. "${NNN_TMPFILE}"
		rm -f -- "${NNN_TMPFILE}" > /dev/null
	}
}
