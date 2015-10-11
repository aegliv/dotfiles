Customize your Tools
====================
Follow the instructions 1:1 as User with Admin privileges

## Bootstrap
1. Install xcode tools
    ```bash
    # install
    … TODO
    # accept license
    sudo xcodebuild -license
    ```
    
2. Install [Homebrew](http://brew.sh/):
    ```bash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
    
3. Verify everything’s ok
    ```bash 
    brew doctor
    ```
    
4. Install [caskroom] (http://caskroom.io/) to install apps with binary installers:
    ```bash
    brew install caskroom/cask/brew-cask
    ```

5. Install Ruby (dependency for 6.)
    ```bash
    brew install rbenv ruby-build
    # search for latest version and install it
    rbenv install --list
    rbenv install 2.2.3
    # switch to custom ruby
    rbenv global 2.2.3
    ```
    
6. Install [Homesick](https://github.com/technicalpickles/homesick) to manage our dotfiles
    ```bash
    gem install homesick
    ```
    
## Custom Terminal
1. Install the Terminal emulator [iTerm2](https://www.iterm2.com/)

    ```bash
    brew cask install iterm2
    ```
    
## Custom Shell
1. Install [Zsh Shell](http://www.zsh.org)
    ```bash
    brew install zsh
    ```
    
2. Make zsh your default
    ```bash
    chsh -s /bin/zsh
    ```
    
3. Restart your terminal and verify
    ```bash
    echo $SHELL       #>/bin/zsh
    echo $ZSH_VERSION #>5.0.8
    ```

### Load Custom Dotfiles
1. Make sure you have the right ruby environment
    ```bash
    eval "$(rbenv init -)"
    ```

2. Clone doftiles from Github
    ```bash
    homesick clone aegliv/dotfiles
    ```

3. Symlink them to your user home
    ```bash
    homesick symlink dotfiles
    ```
4. Restart Terminal
