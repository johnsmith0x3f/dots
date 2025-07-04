function _auto_venv() {
	# Try to find a suitable venv.
	local dir="$PWD"
	while [[ -n "$dir" ]]; do
		local script="$dir/.venv/bin/activate"
		if [[ -f "$script" ]]; then
			source "$script"
			return
		fi
		dir="${dir%/*}" # traverse up
	done

	# No suitable venv found, deactivate any existing ones.
	[[ -z "$VIRTUAL_ENV" ]] || deactivate
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd _auto_venv
