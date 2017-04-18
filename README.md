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

5. Install [caskroom-fonts] (https://github.com/caskroom/homebrew-fonts) to install fonts:
    ```bash
    brew tap caskroom/fonts 
    ```

6. Install Ruby (dependency for 7.)
    ```bash
    brew install rbenv ruby-build
    # search for latest version and install it
    rbenv install --list
    rbenv install 2.2.3
    # switch to custom ruby
    rbenv global 2.2.3
    ```
    
7. Install [Homesick](https://github.com/technicalpickles/homesick) to manage our dotfiles
    ```bash
    gem install homesick
    ```
    
8. Install [7z](http://p7zip.sourceforge.net) to manage encrypted zip archives
    ```bash
    brew install p7zip
    ```
    
## Custom Terminal
1. Install the Terminal emulator [iTerm2](https://www.iterm2.com/)

    ```bash
    brew cask install iterm2
    ```
    
2. Install a nice Mono font, e.g.  [Droid Sans Mono](https://www.google.com/fonts/specimen/Droid+Sans+Mono)

    ```bash
    brew cask install font-droid-sans-mono
    ```

3. Open iTerm2 and enable your custom font in ``iTerm -> Preferences -> Profiles -> Text``
    
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

4. Ensure our 'plugin manager' is executable
    ```bash
    #chmod +x ~/.shy/shy
    ```

5. Restart Terminal

# Update
Update submodules with
    ```bash
    git submodule update --remote --merge
    ```

# Inspiration
- [dashkb](https://github.com/dashkb/.files)
- [nbari](https://github.com/nbari/dotfiles)
- [dustri](https://dustri.org/b/my-zsh-configuration.html)

## Interesting tools
- [osx-trash](https://github.com/sindresorhus/osx-trash)
- [fasd](https://github.com/clvv/fasd)
- [aliases](http://www.thegeekstuff.com/2008/10/6-awesome-linux-cd-command-hacks-productivity-tip3-for-geeks/)
