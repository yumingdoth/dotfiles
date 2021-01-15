# dotfiles

## Prerequisites
 - nodejs [or cnpm]
 - git
 - curl

## Installation
### clone the dotfiles repo
 ```
git clone https://github.com/yumingdoth/dotfiles.git
 ```

### install 
#### zsh
1. [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

2. [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
- install plugins
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

3. make symbolic links
```
ln -s /home/ming/dotfiles/zsh/.zhsrc .zhsrc
```

4. source .zshrc

#### vim
1. [vim](https://www.vim.org/download.php)

2. [vim-plug](https://github.com/junegunn/vim-plug)
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- for plugin
    - [vim-instant-markdown](https://github.com/instant-markdown/vim-instant-markdown)
    ```
    [sudo] npm -g install instant-markdown-d
    ```

3. make symbolic links
```
ln -s /home/ming/dotfiles/vim/.vimrc .vimrc
```

#### tmux 
1. [tmux](https://github.com/tmux/tmux)
```
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
```

2. plugin
- [tpm](https://github.com/tmux-plugins/tpm)

3. theme
- [tmux-themepack](https://github.com/jimeh/tmux-themepack)

4. make symbolic links
```
ln -s /home/ming/dotfiles/tmux/.tmux.conf .tmux.conf
tmux source ~/.tmux.conf
```







