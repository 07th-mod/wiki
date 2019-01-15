# Cross-Platform Mod Installer

The following page provides instructions on running the mod installer. Once the installer wizard has started, please refer to the individual wiki pages for Higurashi and Umineko on what each install option means, FAQs, and troubleshooting.

## Windows

1. Download the [Windows Installer .zip file](http://07th-mod.com/installer/python/higu_win_installer.zip).
2. Extract the zip file to a folder, with the following requirements:
    - The folder must be on the  **same drive** (eg C: drive) as the game.
    - The folder must not require any special permissions for write access.
    - If you're not sure which folder to use, your `Downloads` folder will probably work fine, assuming it's on the same drive as the game.
3. Run the file called `install.bat`

NOTE: If your operating system is 32-bit, you can use the [32-bit version of the installer](http://07th-mod.com/installer/python/higu_win_installer_32.zip)

## Mac

1. Download the [Mac Installer .zip file](http://07th-mod.com/installer/python/higu_mac_installer.zip).
2. Double-click on the zip to extract it (your browser may automatically do this after downloading)
3. Right click on the file called `install` and choose `Open`
4. If prompted with a security prompt, choose `Open`

## Linux

1. Download the [Linux Installer .tar.gz file](http://07th-mod.com/installer/python/higu_linux64_installer.tar.gz).
2. Extract the .tar.gz file
3. Run the shell script called `install`

### Linux Alternate Method

1. Install the following using your distribution's package manager
    - python (python 2 or 3 will both work)
    - python-tk
    - 7zip
    - aria2

2. Download and run [higurashiInstaller.py](https://raw.githubusercontent.com/07th-mod/resources/master/higurashiInstaller.py) . If you cannot double click the file, please run `python higurashiInstaller.py`

For guidance on installing packages, please refer to your distribution's documentation.
