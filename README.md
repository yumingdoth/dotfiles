# dotfiles

## Prerequisites
 - nodejs [cnpm]
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
```
sudo apt install zshrc
chsh -s $(which zsh)
```

2. [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

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
```
sudo add-apt-repository ppa:jonathonf/vimrc
apt udpate
sudo apt install vim
```

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
sudo apt install tmux
```

2. plugin
- [tpm](https://github.com/tmux-plugins/tpm)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

3. make symbolic links
```
ln -s /home/ming/dotfiles/tmux/.tmux.conf .tmux.conf
```

4. Enter tmux, then press prefix + I (capital i, as in Install) to fetch the plugin.

5. for the [powerline](https://github.com/powerline/powerline)
```
sudo apt install powerline
```
