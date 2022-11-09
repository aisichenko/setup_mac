# Install software in a new mac

# Requirements

1. Make sure xcode is the latest version. You can do this through System Update

2. Starting with Mac OS Catalina, the default shell is `zsh`. Change this to `bash` by following instructions [here](https://support.apple.com/en-us/HT208050). 

# Installation

Copy-paste these 3 lines into a terminal. Type `bash install mac.mk` to run the macOS installer

```
git clone git@github.com:aisichenko/setup_mac.git
cd setup_mac
bash install mac.mk
```

## Other stuff

### Bluetooth with macbook air

Sometimes the bluetooth can remain enabled when mac lid is closed. makes connecting headphones to phone annoying. Solution is [here](https://github.com/odlp/bluesnooze/). 