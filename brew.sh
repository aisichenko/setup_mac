#!/bin/bash

source ./lib_sh/echos.sh
source ./lib_sh/requirers.sh

################################
# install brew
################################

running "checking homebrew install"
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
  action "installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"   
    echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
    
    if [[ $? != 0 ]]; then
      error "unable to install homebrew, script $0 abort!"
      exit 2
    fi
else
  ok
  # Make sure we’re using the latest Homebrew
  # running "updating homebrew"
  # brew update
  # ok
fi

################################
# Basic software
################################

for i in \
  ag \
  awk \
  automake \
  bash \
  fish \
  fzf \
  gcc \
  htop \
  lf \
  lsd \
  node \
  tree \
  vim \
  wget \
  yarn \
  ;
do
  require_brew $i
done
