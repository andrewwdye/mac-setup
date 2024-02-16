# Mac Setup Guide

## Applications
* [Chrome](https://www.google.com/chrome/)
* [VSCode](https://code.visualstudio.com/download)
* [Bitwarden](https://bitwarden.com/download/)
* [BetterTouchTool](https://folivora.ai/downloads)
* [MonitorControl](https://github.com/MonitorControl/MonitorControl)
* [Spotify](https://www.spotify.com/us/download/mac/)
* [Docker](https://docs.docker.com/desktop/install/mac-install/)

## Development

### Xcode
Install Xcode Command Line Tools
```
xcode-select --install
```

### Homebrew
[Homebrew](https://brew.sh/) is a package manager for macOS
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Terminal
iTerm2 is a terminal replacement
```
brew install --cask iterm2
```

#### zsh
Install zsh
```
brew install zsh
```

Install [ohmyzsh](https://ohmyz.sh/)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Configure plugins
```
plugins=(aws docker gcloud git gh kubectl)
```

Completions
```
brew install zsh-completions
```

Suggestions
```
brew install zsh-autosuggestions
```

Install powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### vim
Install vim
```
brew install vim
```

#### fzf
Install [fzf](https://github.com/junegunn/fzf) (fuzzy finder)
```
brew install fzf
/usr/local/opt/fzf/install
```

#### direnv
Install [direnv](https://direnv.net/)
```
brew install direnv
echo 'eval "$(direnv hook zsh)"' >> $HOME/.zshrc
```

#### .zshrc

Set tab title
```sh
# Tab title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
```

Aliases
```
# VSCode
alias code='open -a "Visual Studio Code"'
```

#### ripgrep
Install [ripgrep](https://github.com/BurntSushi/ripgrep)
```
brew install ripgrep
```

### Git configuration
Ignore
```
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore
```

Aliases
```
git config --global alias.br branch -v --sort=-committerdate
git config --global alias.clean-br
git config --global alias.co cehckout
git config --global alias.coi !git checkout $(git branch -v --sort=-committerdate | fzf | xargs | cut -d' ' -f1)

git config --global alias.ci commit

git config --global alias.sl log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
git config --global alias.last log -1 HEAD

git config --global alias.st status
git config --global alias.uncommit reset HEAD~
git config --global alias.unstage reset HEAD --

git config --global alias.ignore !sh -c \"echo $1 >> .git/info/exclude\"
git config --global alias.unignore !sh -c \"sed -i .bak \"/^${1}$/d\" .git/info/exclude\"
git config --global alias.ignored "!sh -c \"cat .git/info/exclude | egrep -v \\\"(^#.*|^$)\\\"\""
```

Submodule init
```
git config --global submodule.recurse true
```

### Go
Install go
```
brew install golang
```

### Python
Install python
```
brew install python3
```
Install [uv](https://github.com/astral-sh/uv)
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Rust
Install rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Tools
Other useful tools

#### kubectl, kubectx
Install kubectl
```
brew install kubectl
brew install kubectx
source <(kubectl completion zsh)
```

#### stern
Install [stern](https://github.com/stern/stern)
```
brew install stern
source <(stern --completion=zsh)
```
