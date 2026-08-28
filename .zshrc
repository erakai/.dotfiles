# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Add binaries
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/ktinkess/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/Users/ktinkess/Qt/6.8.1/macos/bin:$PATH"

# For cmake
export CC=/opt/homebrew/opt/llvm/bin/clang
export CXX=/opt/homebrew/opt/llvm/bin/clang++

export IDF_PATH=/Users/ktinkess/esp/esp-idf

# Purdue servers
alias datacs='ssh ktinkess@data.cs.purdue.edu'
alias xinucs='ssh ktinkess@xinu17.cs.purdue.edu'
alias mccs='ssh ktinkess@mc18.cs.purdue.edu'
alias rccs='ssh ktinkess@gpu.scholar.rcac.purdue.edu'

# Misc aliases
alias accentsoff='defaults write -g ApplePressAndHoldEnabled -bool false'
alias accentson='defaults write -g ApplePressAndHoldEnabled -bool true'

# Set preferred editor
export EDITOR='nvim'
alias nv='nvim'
alias vim='nvim'

# Usage: "wordcount . md"
#        "wordcount src/engine cpp"
wordcount() {
  if [[ "$1" == "--help" ]]; then
    echo "Usage: wordcount [directory] [extension]"
    echo "Recursively counts words in files with a speciifc extension within the specified directory."
    echo
    echo "Examples:"
    echo "  wordcount . md             # Count words in markdown files in the current directory"
    echo "  wordcount src/engine cpp   # Count words in c++ files in the engine directory"
    return 0
  fi
  
  find "${1}" -type f -name "*.${2}" -print0 | xargs -0 wc -w
}

# Python development
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias python='python3'

# Raspberry pi!
alias pi="ssh kai@tinkess.com"

# Shortcuts
alias mercury="cd /Users/ktinkess/Documents/Classes/CS\ 407/Mercury"
alias crow="cd /Users/ktinkess/esp/crow/"
alias ls='ls -G'

# ESP-32
alias getidf='. $HOME/esp/esp-idf/export.sh'

# Serial ports
alias serials='ls /dev/cu.*'


# Set prompt
PROMPT="%F{#7033ff}${${(%):-%m}#*-} %F{#057ef7}%1~ %F{#34c964}❯%f "
RPROMPT="%F{240}%*%f"
DISABLE_AUTO_TITLE="true"

# Plugins
source <(fzf --zsh)
source /Users/ktinkess/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/ktinkess/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_MANUAL_REBIND="true"

bindkey -e
