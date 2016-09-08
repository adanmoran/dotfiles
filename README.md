# dotfiles
A collection of my Linux config files, so that I can keep my config up to date across many computers.
====================
REQUIREMENTS (LINUX)
====================

git

build-essentials

libxt-dev

libavformat54

libglu1-mesa-dev

nvidia-settings

libatlas3-base

libssl-dev

libssl1.0.0

==========================
RUN THE FOLLOWING IN ORDER
==========================

cd ~

git clone https://github.com/adanmoran/system-setup-scripts

cd ~/system-setup-scripts

sudo ./install_tmux.sh 

sudo ./install_nvim.sh

sudo ./install_clang.sh (for YouCompleteMe)

sudo ./install_rtags.sh (to jump around in files using vim)

cd ~

git clone https://github.com/adanmoran/dotfiles

cd ~/dotfiles

sudo ./setup_dotfiles.sh

(log out and log in again)

vim

--in vim --> :PlugInstall

:q!

tmux

CTRL-F + i

(log out and log in again)

cd ~/dotfiles/bundles/YouCompleteMe

./install.py --clang-completer


======
RTags
======

(in your build directory:)
cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1; rc -J .

(now your directory will build so you can jump to/from object declarations.
You should run this command once every major release, or about once a month)

NOTES:
*If you get an error with the clang installer regarding dpkg and a library,
 run the command "sudo dpkg -i --force-overwrite <library_that_caused_issue>"
 before continuing.
 
*To change the font and give zsh the correct colour scheme:
  right-click->Profiles->Profile Preferences
  uncheck "Use system font"
  change font to any "Powerline" font


