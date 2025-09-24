# Icarus Verilog + gtkwave Install Guide (macOS)

## Installing Brew (Homebrew)

- Brew is a package manager for macOS. It can install applications as well as various different commands/tools. We will be using it to install Icarus Verilog as well as gtkwave.

1. Open the Terminal app. Run the following command in Terminal 
```
xcode-select --install
```
If Terminal asks for permissions make sure to allow/accept.

2. Go to [brew.sh](https://brew.sh/) and copy the command shown on the website.

3. Open the Terminal app on your computer and run the copied command.

4. If you are asked for a password, enter your current user's password into the terminal. Your user MUST have superuser privilege.

5. If the Terminal requests XCode Tools to be installed, accept and allow it access.

6. Once Brew has finished installing, there are additional instructions that need to be ran manually. Copy and paste the given commands as needed.

7. If all goes well, then running ``brew`` in Terminal should yield example usage. If you're having trouble, double check there are no errors and rerun the installation process.

8. That's it! Just run ``brew update && brew upgrade`` whenever you need to update all packages.

## Installing Icarus Verilog

1. In Terminal, run the command ``brew install iverilog``
2. If everything goes well, you should be able to use the ``iverilog`` command in Terminal.

## Installing gtkwave

Installing gtkwave will be a bit more involved, as we are installing from a tap (3rd party repository)
1. ``brew install --HEAD randomplum/gtkwave/gtkwave``
2. If the installation is sucessful, running ``gtkwave`` from Terminal should launch the gtkwave app. gtkwave can also be found in your Applications folder.