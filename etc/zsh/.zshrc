# Enable Powerlevel10k instant prompt. Should stay close to the top of .zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source the visible rc file.
source "${ZDOTDIR}/rc.zsh"

# To customize prompt, run `p10k configure` or edit ~/.etc/zsh/.p10k.zsh.
if zmodload "/zsh/terminfo" && (( terminfo[colors] >= 256 )); then
	[[ ! -f ~/.etc/zsh/.p10k.zsh ]] || source ~/.etc/zsh/.p10k.zsh
else
	[[ ! -f ~/.etc/zsh/.p10k-portable.zsh ]] || source ~/.etc/zsh/.p10k-portable.zsh
fi
