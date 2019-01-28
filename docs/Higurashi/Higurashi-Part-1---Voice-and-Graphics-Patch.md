# Installing the patch

!!! note
    Don't forget to check ["Patch configuration and extras"](https://07th-mod.com/wiki/Higurashi/Higurashi-Part-2---Patch-configuration-and-keyboard-shortcuts) after installing the patch manually or using the installer.

## Installer (Windows only)

The installer combines all the patches available to create the best experience possible. It will automatically download and install the following content:

* Full voiceover
* PS3 backgrounds and CGs in Full HD
* PS3 sprites with lipsync in 1440p
* Updated MangaGamer sprites in 1440p
* Upgraded user interface
* Opening videos

To use the installer, follow the guide below:

1. Download the latest installer from [the Installer Releases page](https://github.com/07th-mod/Higurashi_Installer_WPF/releases/latest)
2. Open the software
3. You will be given the choice of Higurashi or Umineko - select the Higurashi dropdown
4. Choose the chapter you want to patch by clicking on the correct icon** (protip: mouse over the icons to see the banners for each chapter!)
5. Set the installation directory to your game directory **(supports Steam, GOG and MangaGamer releases)**
    * If you are unsure **where** the Steam game is located, open Steam and find it in your Steam library, right-click on it and choose ``Properties``. In the new window that just opened, click on the ``LOCAL FILES`` tab and then on the ``Browse local files...`` button. Windows Explorer will then open showing you where the game is installed
6. If the directory is correct, the software will validate the path and let you proceed with the installation
7. A progress bar and text will show the status of the installation

!!! warning
    As reported, some antivirus software might warn you about the installer. **This is a false positive**, and it happens because the installer is either new or not verified by the antivirus databases yet. The installer code can be freely accessed in our Github organization and will be only compiled from a trusted source.

## Multiplatform installer (Windows, Mac and Linux)

!!! bug
    **This installer is currently in active development.** Bugs might happen and things might not work. If you are running Windows, we recommend using the solution **above**.

This installer is an alternative to the method above, however fully multiplatform. That means you can automatically install the patch on Linux and Mac from now on, with the small downside of an uglier interface. We promise the plan is to make it look just like the native Windows installer, these things take time to develop.

**Using this installer should install the exact same features as the Windows installer.** Check above for more information on what the installer does.

??? example "Windows"
    1. Download the [Windows Installer (64-bit)](http://07th-mod.com/installer/python/higu_win_installer.zip)
          * If you are running a 32-bit Windows or do not know which version you currently have, download the [Windows Installer (32-bit)](http://07th-mod.com/installer/python/higu_win_installer_32.zip)
    2. Extract the zip file to any folder, with the following requirements:
          * The folder must be on the  **same drive** (eg C: drive) as the game
          * The folder must not require any special permissions for write access
          * If you're not sure which folder to use, your `Downloads` folder will probably work fine, assuming it's on the same drive as the game
    3. Run the file called `install.bat`

#### Mac

1. Download the [Mac Installer](http://07th-mod.com/installer/python/higu_mac_installer.zip)
2. Double-click on the zip to extract it (your browser may automatically do this after downloading)
3. Right click on the file called `install` and choose `Open`
4. If prompted with a security prompt, choose `Open`

#### Linux

1. Install the following using your distribution's package manager:
    * Python (2 or 3)
    * Python Tkinter
        * **Ubuntu**: `sudo apt-get install python-tk`
        * **Arch Linux**: `sudo pacman -S tk`
        * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
        * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution
2. Download and extract the [Linux Installer](http://07th-mod.com/installer/python/higu_linux64_installer.tar.gz)
3. Run the shell script called `install`

!!! info "You can also download and run this Python file: [higurashiInstaller.py](https://raw.githubusercontent.com/07th-mod/resources/master/higurashiInstaller.py)"
    It requires the following dependencies:
    
    * Python (2 or 3)
    * Python Tkinter
    * 7-zip
    * Aria2
