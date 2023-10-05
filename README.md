# Install software in a new mac

This installs miniconda3 on mac, which can also be downloaded from [this](https://docs.conda.io/projects/miniconda/en/latest/) website. Check which version of mac you are using, Intel or Apple silicon.

# Requirements

1. Make sure xcode is the latest version.

```
xcode-select --install
```

You can do this through System Update

4. Starting with Mac OS Catalina, the default shell is `zsh`. Change this to `bash` by typing `chsh -s /bin/bash` in the terminal and restarting the terminal.

# Installation

Copy-paste these lines into a terminal. Type `bash install mac.mk` to run the macOS installer

```
git clone https://github.com/aisichenko/setup_mac.git
cd setup_mac
bash
bash install mac.mk
```

## Acknowledgements

Credit to Joaquin Matres `install_new_computer` repository which this is based on.


## Other stuff

### Bluetooth with macbook air

Sometimes the bluetooth can remain enabled when mac lid is closed. makes connecting headphones to phone annoying. Solution is [here](https://github.com/odlp/bluesnooze/). 
