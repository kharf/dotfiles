# <img src="https://github.com/jglovier/dotfiles-logo/blob/main/dotfiles-logo.png" alt="dotfiles logo" width="400">

[![GitHub](https://img.shields.io/github/license/kharf/dotfiles?label=license&style=for-the-badge)](https://github.com/kharf/dotfiles/blob/main/LICENSE.txt)
[![GitHub Linter Workflow](https://img.shields.io/github/workflow/status/kharf/dotfiles/linter/main?label=linter&style=for-the-badge)](https://github.com/kharf/dotfiles/actions/workflows/linter.yaml)

My dotfiles setup using [git](https://git-scm.com/) bare repository functionality.

- Table of contents
  - [Prerequisites](#prerequisites)
  - [Set up from scratch](#set-up-from-scratch)
  - [Install the dotfiles on a new machine](#install-the-dotfiles-on-a-new-machine)
  - [License](#license)

## Prerequisites
- git
- rsync (to set up a new machine)

## Set up from scratch

1. Create a placeholder for git internal files  
  `mkdir -p ~/dotfiles`

1. Initialize the bare repository  
  `git init --bare ~/dotfiles`

1. Create an alias to interact with the dotfiles  
  `alias dot='git --git-dir=~/dotfiles/ --work-tree=$HOME'`  
  so instead of `git add` or `git status`, use `dot add`, `dot status` etc.

1. Config git to ignore all files by default  
  `dot config --local status.showUntrackedFiles no`

1. Now you are ready to track your dot files.  

**Note:** To see which files are currently being tracked, use `dot ls-tree -r main --name-only`

## Install the dotfiles on a new machine

1. Clone to a temporary folder  
  `git clone --separate-git-dir=~/dotfiles <remote-git-url> tmp-dotfiles`

1. Synchronize the files  
  `rsync --recursive --verbose --exclude '.git' tmp-dotfiles/ ~/`

1. Remove the temporary folder  
  `rm -rf tmp-dotfiles`

## Credits
- [dotfiles image](https://github.com/jglovier/dotfiles-logo/blob/main/dotfiles-logo.png) by [Joel Glovier](https://github.com/jglovier)

## License
Distributed under the MIT License. See LICENSE.txt for more information.

