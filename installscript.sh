xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iterm2
brew install iterm2

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh

# update dotfiles
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.aliases > ~/.aliases
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.gitignore > ~/.gitignore

git config --global core.excludesFile '~/.gitignore'

# composer
brew install composer


# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install stable

# Valet
brew install php && composer global require laravel/valet && ~/.composer/vendor/bin/valet install

brew tap nicoverbruggen/homebrew-cask

# Homebrew Casks
brew install \
notion \
google-chrome \
slack \
dbngin \
tableplus \
spotify \
docker \
whatsapp \
phpstorm \
tinkerwell \
ray \
figma \
postman \
phpmon \
cyberduck \
todoist \
balance-lock \
rectangle \
obsidian \
--cask

# Homebrew packages
brew install \
eul \
gh \

# add elasticsearch image to docker
# docker run -d --name elasticsearch-793 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.9.3

# Set git config
git config --global pull.rebase true 
git config --global rebase.autoStash true
