# dotfiles

## Prerequisites
 - [nodejs](https://github.com/nodesource/distributions/blob/master/README.md#debinstall), [[cnpm](https://www.npmjs.com/package/cnpm)]
 - [git](https://git-scm.com/download/linux)
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
sudo apt install zsh
chsh -s $(which zsh)
```

2. [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- install plugins
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
    ```
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

3. make symbolic links
```
ln -sf /home/ming/dotfiles/zsh/.zshrc .zshrc
```
4. install theme
```
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

5. source .zshrc (maybe need logout and login again).

#### vim
1. [vim](https://www.vim.org/download.php)
```
sudo add-apt-repository ppa:jonathonf/vim
apt update
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

4. install plugins
```
vim
:PlugInstall
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

## FAQ
- curl: (7) Failed to connect to raw.githubusercontent.com port 443: Connection refused:
    
    probably because of DNS problem(maybe the GFW).
    
    try use proxy(vpn).


    or try this: https://github.com/hawtim/blog/issues/10

    breifly:
    ```
    $ sudo cp /etc/hosts /etc/hosts.bak
    $ sudo vim /etc/hosts

    # append the end of hosts file
    199.232.96.133 raw.githubusercontent.com
    ```

