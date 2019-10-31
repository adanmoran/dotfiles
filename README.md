# dotfiles
A collection of my Linux config files, so that I can keep my config up to date across many computers.

REQUIREMENTS (LINUX)
--------------------

* (Installed) git
* (Installed) zsh
* (Installed) realpath
* (Installed) cmake 3.0.2 or higher
* (Installed) ninja-build
* (Installed) rdm
* (Installed) zathura
* (Installed) latexmk
* (Cloned into /home/<user>/dotfiles) https://github.com/adanmoran/system-setup-scripts

If you do not have the installed applications yet, run ``` sudo apt-get install git zsh realpath ninja-build zathura latexmk```. For cmake, I recommend
using the following commands:
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get install cmake
```

RUN THE FOLLOWING IN ORDER
--------------------------
First, clone the required repositories. Then go into the setup scripts and install tmux and neovim, which are much
better systems to use than normal shell and regular vim.
```
cd ~
git clone https://github.com/adanmoran/system-setup-scripts
git clone https://github.com/adanmoran/dotfiles
cd ~/system-setup-scripts
sudo ./install_tmux.sh 
sudo ./install_neovim.sh
```

Next, run the dotfiles setup script. This will initialize the zshrc, vimrc, etc...
with a lot of useful functionality, as well as create nice aliases for basic commands.
```
cd ~/dotfiles
sudo ./setup_dotfiles.sh
```
If it ran without error, *Log out* and log in again. Open a new terminal and run ```echo $0``` to see what shell you're in - if it is not zsh you'll need to type ```zsh``` to run the setup for the zsh terminal, then log out and in once more. You'll know for sure
it's worked if you get a blue box around your current directory, and a green one surrounding the current branch when you're in
the dotfiles folder.

You can set the default shell with
```
chsh -s $(which zsh)
```

The following is only useful if you want to have autocompletion in Vim and follow variable names to their declarations
in C/C++.
```
cd ~/system-setup-scripts
sudo ./install_clang.sh (for YouCompleteMe)
sudo ./install_rtags.sh (to jump around in files using vim)
```

If you get an error with the clang installer regarding dpkg and a library, run the command 
```sudo dpkg -i --force-overwrite <library_that_caused_issue>``` and try the clang installer again.
 
Now we can update the vim plugins to have everything necessary for beautiful code.

First, install the vim Plugin manager (see https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then, open vim and install the plugins.
```
vim
--in vim --> :PlugUpgrade
--in vim --> :PlugInstall
--in vim --> :q!
```

Once vim is done updating, install all the tmux plugins and it should start to look beautiful.
```
sudo tmux
CTRL-f + SHFT-i
exit
```
Note that the script replaces the usual tmux prefix (CTRL-b) with CTRL-f.

Finally, to *enable* YouCompleteMe for C/C++, log out, log in, and run the clang-completer install file.
```
cd ~/dotfiles/bundles/YouCompleteMe
./install.py --clang-completer
```

For RTags
---------

In your build directory run the command ```cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1; rc -J . ```

(now your directory will build so you can jump to/from object declarations.
You should run this command once every major release, or about once a month)

Start a new terminal in tmux, and run rdm there. It takes a full terminal window to run.
Once you've done that, you will be able to follow by using the rtags commands (which you can find online)

For Tmux
--------
If you can't save and restore a tmux session (CTRL-f CTRL-s then CTRL-f CTRL-r), you should check that 
the user owns the `~/.tmux folder`. If not, do the following:
```
cd ~
sudo chown $(whoami):$(whoami) -R ~/.tmux
```
This issue of root owning the .tmux folder can also cause other plugins to not work correctly, so ensure this
is always done!

NOTES:
======
* All of the files can be changed to suit your needs - simply fork my repository and change the dotfiles/.*rc files before
running setup_dotfiles.sh
 
*To change the font and give zsh the correct colour scheme:
  right-click->Profiles->Profile Preferences
  uncheck "Use system font"
  change font to any "Powerline" font


