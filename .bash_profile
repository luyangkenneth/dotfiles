if [ -r ~/.profile ]; then . ~/.profile; fi
case $- in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

eval "$(/opt/homebrew/bin/brew shellenv)"

. "$HOME/.cargo/env"

# uv
export PATH="/Users/kennethlu/.local/bin:$PATH"
