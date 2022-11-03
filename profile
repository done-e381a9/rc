# ~/.profile: executed by the command interpreter for login shells.
# This file is(may) not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

if [ -d "$HOME/bin" ]; then
  PATH=$HOME/bin:$PATH
fi

## auto load sshkey
for f in $(find ${HOME}/.ssh -type f | grep -e '.pub$'); do
  # ssh-add ${f%.pub}
  (ssh-add ${f%.pub} 2>/dev/null &)
done

