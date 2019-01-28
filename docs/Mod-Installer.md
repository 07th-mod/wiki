# Cross-Platform Mod Installer

## Obtaining the Installer:

#### Windows

1. Download the [Windows Installer .zip file](http://07th-mod.com/installer/python/higu_win_installer.zip).
2. Extract the zip file to a folder, with the following requirements:
    - The folder must be on the  **same drive** (eg C: drive) as the game.
    - The folder must not require any special permissions for write access.
    - If you're not sure which folder to use, your `Downloads` folder will probably work fine, assuming it's on the same drive as the game.
3. Run the file called `install.bat`

NOTE: If your operating system is 32-bit, you can use the [32-bit version of the installer](http://07th-mod.com/installer/python/higu_win_installer_32.zip)

#### Mac

1. Download the [Mac Installer .zip file](http://07th-mod.com/installer/python/higu_mac_installer.zip).
2. Double-click on the zip to extract it (your browser may automatically do this after downloading)
3. Right click on the file called `install` and choose `Open`
4. If prompted with a security prompt, choose `Open`

#### Linux

1. Install the following using your distribution's package manager
    - Install Python (2 or 3)
    - Install Python Tkinter
        - **Ubuntu**: `sudo apt-get install python-tk`
        - **Arch Linux**: `sudo pacman -S tk`
        - **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
        - If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution.
2. Download and extract the [Linux Installer .tar.gz file](http://07th-mod.com/installer/python/higu_linux64_installer.tar.gz).
3. Run the shell script called `install`

#### Linux Alternate Method

If you have trouble with the normal method, you can try the steps below:

1. Install the following using your distribution's package manager
    - Follow the normal instructions above to install Python and Python Tkinter
    - Install 7zip (as `7z` or `7za`)
    - Install Aria2 (as `aria2c`)

2. Download and run [higurashiInstaller.py](https://raw.githubusercontent.com/07th-mod/resources/master/higurashiInstaller.py) . If you cannot double click the file, please run `python higurashiInstaller.py`

For guidance on installing packages, please refer to your distribution's documentation.

----

## Using the installer

1. Select which type of game you want to install (Umineko or Higurashi)
2. The installer will attempt to auto-detect games it can patch 
    - If your game is found, click on the path of the game you want to patch
    - If your game is not found, click "Choose Folder Manually" and manually select the game path
3. Select which mod you want to install (eg full patch, voice only patch ...)
4. Click 'OK' to begin the installation. The output will be shown on the terminal.
5. Wait for the install to complete.
6. Upon completion, the Umineko installer won't delete temporary files. This is so that you can re-install in the future without re-downloading. If you have verified your game works to your liking, you may wish to delete the temporary files, located in the `temp` folder of the game directory.