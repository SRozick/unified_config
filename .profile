# this applies .bashrc on each terminal open
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

echo "Applied .profile"
