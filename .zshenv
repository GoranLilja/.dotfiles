# Open application (or file with application)
alias vscode='open -a "Visual Studio Code"'
# Shortcut for editing this file
alias envedit='vscode /Users/goranlilja/.zshenv'
# Hide/show desktop icons
alias hideicons='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias showicons='defaults write com.apple.finder CreateDesktop true; killall Finder'
# Jump directly to directories
#alias code='cd /Users/goranlilja/Code'
# Delete Xcode's Derived Data folder
alias ddd='rm -rf ~/Library/Developer/Xcode/DerivedData && echo "Xcode Derived Data cleared"'
# Stitch images together
alias stitch='convert +append'
# It never hurts to be polite
alias please='sudo'
# Git shortcuts
alias ga='git add --all'
alias gb='git branch'
alias gcm='git commit -m'
alias gcne='git commit --amend --no-edit'
alias gco='git checkout'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gdno='git diff --name-only HEAD'
alias gf='git fetch'
alias gl='git log'
alias gr='git reset'
alias grh='git reset --hard HEAD'
alias gst='git status'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save'
