xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iterm2
brew install iterm2

# Insert aliases
curl https://gist.githubusercontent.com/quintenbuis/19606f2697b01acec421a05ffddfc4ed/raw/5a73bfa3574972ad486e1127b1200d4f95d4741c/.aliases > ~/.aliases

# composer
brew install composer

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions # NEEDS EXTRA SETUP

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install stable

# Valet
brew install php && composer global require laravel/valet && ~/.composer/vendor/bin/valet install

# Notion
brew install notion --cask

# alfred
brew install alfred --cask

# Chrome
brew install google-chrome --cask

# Git-Flow
brew install git-flow

# Slack
brew install slack --cask

# Eul
brew install eul

# dbngin
brew install dbngin --cask

# tableplus
brew install tableplus --cask

# spotify
brew install spotify --cask

# docker
brew install docker --cask

# whatsapp
brew install whatsapp --cask

# phpstorm 
brew install phpstorm --cask

# spectacle
brew install spectacle --cask

# tinkerwell
brew install tinkerwell --cask

# spatie/ray
brew install ray --cask

# figma
brew install figma --cask

# postman
brew install postman --cask

# phpmon
brew tap nicoverbruggen/homebrew-cask
brew install --cask phpmon

# github cli
brew install gh

# mailhog
brew install mailhog

# cyberduck
brew install cyberduck --cask


# add elasticsearch image to docker
docker run -d --name elasticsearch-793 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.9.3
