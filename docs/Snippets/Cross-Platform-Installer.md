## Multiplatform installer (Windows, Mac and Linux)

!!! bug
    **This installer is currently in active development.** You might find bugs, and things might not always work - We would be grateful if you report bugs on github or our discord server. If you are running Windows, we recommend using the Windows Installer.

This installer is compatible with Windows, Linux, and Mac. The interface is uglier, but we plan to make it look just like the native Windows installer. **Using this installer should install the exact same features as the Windows installer**

### How to use the multiplatform installer

Click on any of the blocks for the operating system of your choice to see the instructions:

??? example "Windows"
    1. Download the [Windows Installer (64-bit)](https://github.com/07th-mod/python-patcher/releases/latest)
          * If you are running a 32-bit Windows or do not know which version you currently have, download the [Windows Installer (32-bit)](https://github.com/07th-mod/python-patcher/releases/latest)
    2. Extract the zip file to your normal `Downloads` folder (assuming your `Downloads` folder is on the same drive as your game). If you need to extract to a different location:
          * Make sure the folder is on the  **same drive** (eg C: drive) as the game
          * Make sure the folder doesn't require any special permissions
    3. Run the file called `install.bat`

??? example "Mac"
    1. Download the [Mac Installer](https://github.com/07th-mod/python-patcher/releases/latest)
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
    2. Download and extract the [Linux Installer](https://github.com/07th-mod/python-patcher/releases/latest)
    3. Run the shell script called `install`

??? info "(Power Users Only) Install from Source"
    1. Install these dependencies:

        * Python (2 or 3)
        * Python Tkinter
        * 7-zip
        * Aria2
        * git

    2. Clone our git repository: `git clone https://github.com/07th-mod/python-patcher.git`
    3. Run `python main.py` or the equivalent command on your system
