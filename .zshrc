# Enable extended globbing eg. negation patterns
setopt extended_glob

# don't require explicitly matching a leading . in filenames
setopt glob_dots

# Save history from concurrent sessions
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
HISTSIZE=100000000
SAVEHIST=100000000

# Set history to be persisted between `wfx up` runs
HISTFILE='/opt/wf/.zsh_history'

# Custom configuration
# All commands and aliases are stored separately in the .dotfiles folder

# pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

source ~/.dotfiles/aliases.sh

# Add scripts to PATH
export PATH=$PATH:$HOME/.dotfiles/misc_scripts

# Add further setup here (eg. NVM, GOPATH etc.)
export EDITOR='nvim'
alias vi='nvim'
alias vim='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow --glob '!.git/*'"

