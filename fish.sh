#!/bin/bash

fish_bin=$(which fish) 2>&1 > /dev/null
echo $fish_bin | sudo tee -a /etc/shells
