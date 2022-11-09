#!/bin/bash
# I recommend installing miniconda with pyenv, so you can also install other python versions

echo "checking conda install for python3 64 bits"
if [[ ! -d $HOME/miniconda3 ]]; then
  echo "installing conda"
  if [[ -d /Applications ]]; then
    wget -O 'miniconda3.sh' 'https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh'
  fi
  bash miniconda3.sh -b
  rm miniconda3.sh
fi

source $HOME/miniconda3/bin/activate
conda init fish

# todo set up the node js, needed for jupyter extensions like dash: conda install nodejs
