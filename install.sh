#!/bin/bash
#
# Script Name:   dotfiles
# Script URI:    https://github.com/erikbelusic/dotfiles
# Author:        Erik Belusic
# Author URI:    http://erikbelusic.com
# Author github: https://github.com/erikbelusic
# Description:   You know..... dotfiles
# Version:       0.1.0
# License:       TBD
# License URI:


# TODO: fix colorize.sh


################################################################################
# Constant Definitions
################################################################################


# Get the location of this file. EVERYTHINGS relies on this. DO NOT REMOVE OR ALTER.
readonly BASEDIR=$(dirname $0)






source $BASEDIR/utils/bootstrap.sh

echo "Do not run this script unless you know what it will do. Hit Ctrl-C NOW"
read -n 1
	
echo "Setting up your Mac..."

# Tasks either install and/or configure something
task "install_xcode_command_line_tools"
task "change_shell"
task "install_homebrew"
task "use_brew_file"





# Update Homebrew recipes
# brew update

# Install all our dependencies with bundle (See Brewfile)
# brew tap homebrew/bundle
# brew bundle

# Make ZSH the default shell environment
# chsh -s $(which zsh)

# Install Composer
# curl -sS https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/lumen-installer tightenco/jigsaw

# Create a Sites directory
# This is a default directory for OS X user accounts but doesn't comes pre-installed
# mkdir $HOME/Sites

# Set OS X preferences
# We will run this last because this will reload the shell
# source .osx