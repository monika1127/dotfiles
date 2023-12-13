export EDITOR="code -w"
export DEFAULT_USER=$(whoami)
export ZSH=$HOME/.oh-my-zsh

plugins=(git common-aliases zsh-syntax-highlighting brew asdf)

# ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
export DISABLE_MAGIC_FUNCTIONS=true
source $ZSH/oh-my-zsh.sh

## Powerlevel9k settings
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
### To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Aliases
alias ls="exa"
alias ios="yarn react-native run-ios"
alias android="yarn react-native run-android"
function podi(){
  [ -e ./Podfile ] && npx pod install

  if [ -e ./ios ]; then
    cd ./ios
    npx pod install
    cd ..
  else
    echo "No ios in this project"
  fi
}

# Path configuration
export PATH="/usr/local/bin:/usr/local/sbin:$PATH" # prioritize homebrew bins. This should be last PATH update
