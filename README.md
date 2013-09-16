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
