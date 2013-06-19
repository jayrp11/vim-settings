##Vim Settings

This vim settings uses https://github.com/tpope/vim-pathogen plugin to manage plugins. 
Follow description to setup the vim on Ubuntu OS, though I have not tested on other operating 
systems, I assume it should work out of box.


1. Get the repo

```bash
git clone git://github.com/jayrp11/vim-settings.git
cd vim-settings
git submodule init
git submodule update
```

2. Link the files

```bash
# Take backup of .vim and .vimrc before below steps
ln -s vim-settings .vim
ln -s vim-settings/vimrc .vimrc
```

3. Check for ruby support. This is required for https://github.com/wincent/Command-T plugin.

```bash
vim --version | grep ruby
```

Observe the output. It shoudl contain the `+ruby` string. Also check the version with the installed ruby on machine.

In case ruby support is not available follow below steps

```bash
# Remove all vim related stuff
sudo apt-get purge vim vim-gnome vim-gtk vim-tiny vim-scripts

# Install mercurial to get vim source code
sudo apt-get install mercurial

# Get vim source
cd ~
hg clone https://vim.googlecode.com/hg/ vim-source
cd vim-source
hg pull
hg update

# Install packages required for vim
sudo apt-get install libncurses-dev libgnome2-dev libgtk2.0-dev \
       libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev \
       libxpm-dev libxt-dev

# Install vim
cd ~/vim-source
./configure --with-features=HUGE \
       --enable-pythoninterp=yes \
       --enable-multibyte=yes \
       --enable-cscope=yes \
       --enable-rubyinterp=yes \
       --enable-gui=gnome2 \
       --with-x --enable-fontset
make
sudo make install
```

