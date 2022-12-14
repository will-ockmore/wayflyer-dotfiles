# Enable extended globbing eg. negation patterns
setopt extended_glob

# don't require explicitly matching a leading . in filenames
setopt glob_dots

# Save history from concurrent sessions
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
HISTSIZE=100000000
SAVEHIST=100000000

# Set history to be persisted between `wfx up` runs
HISTFILE="$WF_STATE_DIR/.zsh_history"

# Custom configuration
# All commands and aliases are stored separately in the .dotfiles folder

# pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

source ~/.dotfiles/aliases.sh

export GPG_TTY=$(tty)

export EDITOR='nvim'
alias vi='nvim'
alias vim='nvim'

# Add neovim location to PATH
export PATH=$PATH:$WF_STATE_DIR/neovim/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow --glob '!.git/*' --glob '!*node_modules*' --glob '!*venv*'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

