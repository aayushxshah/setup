export PATH="$HOME/.local/bin:$PATH"

if (( ! $+commands[brew] )); then
  for brew_path in \
    /opt/homebrew/bin/brew \
    /home/linuxbrew/.linuxbrew/bin/brew \
    /usr/local/bin/brew
  do
    if [[ -x "$brew_path" ]]; then
      eval "$("$brew_path" shellenv)"
      break
    fi
  done
  unset brew_path
fi

if (( $+commands[brew] )); then
  fpath=("$(brew --prefix)/share/zsh/site-functions" $fpath)
fi

autoload -Uz compinit
compinit

source "$HOME/.devrc"

if [[ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc"
fi

if [[ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi
