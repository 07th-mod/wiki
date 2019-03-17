## Multiplatform installer (Windows, Mac and Linux)

!!! bug
    **This installer is currently in active development.** Bugs might happen and things might not work. If you are running Windows, we recommend using the solution **above**.

This installer is an alternative to the method above, however fully multiplatform. That means you can automatically install the patch on Linux and Mac from now on, with the small downside of an uglier interface. We promise the plan is to make it look just like the native Windows installer, these things take time to develop.

**Using this installer should install the exact same features as the Windows installer.** Check above for more information on what the installer does.

### How to use the multiplatform installer

Click on any of the blocks for the operating system of your choice to see the instructions:

??? example "Windows"
    1. Download the [Windows Installer (64-bit)](http://07th-mod.com/installer/python/higu_win_installer.zip)
          * If you are running a 32-bit Windows or do not know which version you currently have, download the [Windows Installer (32-bit)](http://07th-mod.com/installer/python/higu_win_installer_32.zip)
    2. Extract the zip file to any folder, with the following requirements:
          * The folder must be on the  **same drive** (eg C: drive) as the game
          * The folder must not require any special permissions for write access
          * If you're not sure which folder to use, your `Downloads` folder will probably work fine, assuming it's on the same drive as the game
    3. Run the file called `install.bat`

??? example "Mac"
    1. Download the [Mac Installer](http://07th-mod.com/installer/python/higu_mac_installer.zip)
    2. Double-click on the zip to extract it (your browser may automatically do this after downloading)

        !!! warning
            The zip contains two hidden files that are required by the installer.  If you try to move the `install` file out of the folder, it won't be able to find them.  If you really want to move the `install` file out of the folder, press ⇧⌘. (Shift-Command-Period) to temporarily enable showing of hidden files and copy the `.7za` and `.aria2c` files to the same folder.

    3. Right click on the file called `install` and choose `Open`
    4. If prompted with a security prompt, choose `Open`

??? example "Linux"
    1. Install the following using your distribution's package manager:
        * Python (2 or 3)
        * Python Tkinter
            * **Ubuntu**: `sudo apt-get install python-tk`
            * **Arch Linux**: `sudo pacman -S tk`
            * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
            * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution
    2. Download and extract the [Linux Installer](http://07th-mod.com/installer/python/higu_linux64_installer.tar.gz)
    3. Run the shell script called `install`

!!! info "Power users can also download and run this Python file: [higurashiInstaller.py](https://raw.githubusercontent.com/07th-mod/resources/master/higurashiInstaller.py)"
    It requires the following dependencies:

    * Python (2 or 3)
    * Python Tkinter
    * 7-zip
    * Aria2