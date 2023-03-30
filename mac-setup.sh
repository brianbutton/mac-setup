#! /bin/sh
echo | 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/brian/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/brian/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.Dock autohide -bool TRUE
defaults write com.apple.Dock orientation -string left
defaults write com.apple.Dock static-only -bool TRUE
defaults write com.apple.Dock tilesize -int 45; killall Dock
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
defaults -currentHost write com.apple.screensaver idleTime 0
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write com.apple.dock show-recents -bool FALSE
defaults write -g com.apple.mouse.scaling 2
defaults write com.apple.TextEdit RichText -bool FALSE
sudo pmset displaysleep 60
sudo pmset sleep 60
 
#git config --global user.email 
#git config --global user.name 

mkdir ~/storage/
cd ~/storage
git clone git@github.com:Yuppiechef/web-libs.git
git clone git@github.com:Yuppiechef/dev-setup.git
git clone git@github.com:Yuppiechef/dev-docker-images.git

#load intellj settings, licencing 
#install intellj cursive plugin, licence add projects and set project.clj as lein project
#load item2 profiles
#sginin to chrome
#sginin to sourcetree
#sginin to slack


#Apple menu > System Preferences, click Accessibility, then click Spoken Content

wget https://s3.amazonaws.com/appdistro.branham.org/33/the-table.app.zip
unzip the-table.app.zip
mv "The Table.app" /Applications/
rm -r the-table.app.zip

brew install eloquent visual-studio-code tomighty github firefox vlc ack wget iterm2 whatsapp google-chrome slack intellij-idea sourcetree keka rectangle clipy git node ansible pritunl leiningen

npm install -g grunt-cli

brew install --cask docker
brew install docker awscli mkcert
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk16
pip3 install python-consul


