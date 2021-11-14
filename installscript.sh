xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iterm2
brew install iterm2

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh

# update dotfiles
curl https://gist.githubusercontent.com/quintenbuis/dotfiles/main/.aliases > ~/.aliases
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.zshrc > ~/.zshrc
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/quintenbuis/dotfiles/main/.gitignore > ~/.gitignore

// install spaceship prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# composer
brew install composer


# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install stable

# Valet
brew install php && composer global require laravel/valet && ~/.composer/vendor/bin/valet install

brew tap nicoverbruggen/homebrew-cask

brew install \
notion \
alfred \
google-chrome \
slack \
dbngin \
tableplus \
spotify \
docker \
whatsapp \
phpstorm \
spectacle \
tinkerwell \
ray \
figma \
postman \
phpmon \
cyberduck \
--cask

brew install \
git-flow \
eul \
gh \
mailhog \
zsh-autosuggestions \

# add elasticsearch image to docker
docker run -d --name elasticsearch-793 -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.9.3
