function auto_venv() {
	# Try to find a suitable venv.
	local dir="$PWD"
	while [[ -n "$dir" ]]; do
		local script="$dir/.venv/bin/activate"
		[[ -f "$script" ]] && source "$script" && return || dir="${dir%/*}"
	done

	# No suitable venv found, deactivate any existing ones.
	[[ -z "$VIRTUAL_ENV" ]] || deactivate
}

# Allow adding zsh hooks.
autoload -Uz add-zsh-hook
# Hook this on directory change.
add-zsh-hook chpwd auto_venv
