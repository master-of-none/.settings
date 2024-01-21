# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/shrikrishnabhat/anaconda3/bin/conda
    eval /Users/shrikrishnabhat/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# Lunarvim export
export PATH="/Users/shrikrishnabhat/.local/bin:$PATH"

# Aliases
alias vim="lvim"
alias vi="lvim"
alias leet="leetcode"
alias python="python3"
alias cat="bat"
alias ls='exa --grid --color=auto --icons'
alias lsa='exa -lah'
#alias cd="z"

# Starship
starship init fish | source

# Zoxide
zoxide init fish | source

# Homebrew: Python
# export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
# export PATH = "/opt/homebrew/Cellar/python@3.11:$PATH"
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
export PATH="/opt/homebrew/Cellar/python@3.11/bin:$PATH"
export PATH="/opt/homebrew/lib/python3.11/site-packages:$PATH"
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
# opam configuration
source /Users/shrikrishnabhat/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
