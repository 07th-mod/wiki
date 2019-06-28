## Multiplatform installer (Windows, Mac and Linux)

## Multiplatform installer instructions

1. Click on your operating system below for instructions on downloading and launching the installer.

    ??? example "Windows"
        1. Download the [Windows Installer](https://github.com/07th-mod/python-patcher/releases)
        2. Extract the zip file to a folder of your choice. Do not attempt to run the installer directly from the zip file!
        3. Run the file called `install.bat` in the extracted folder

    ??? example "Mac"
        1. Download the [Mac Installer](https://github.com/07th-mod/python-patcher/releases)
        2. Double-click on the zip to extract it (your browser may automatically do this after downloading)

            !!! warning
                The zip contains two hidden files that are required by the installer.  If you try to move the `install` file out of the folder, it won't be able to find them.  If you really want to move the `install` file out of the folder, press ⇧⌘. (Shift-Command-Period) to temporarily enable showing of hidden files and copy the `.7za` and `.aria2c` files to the same folder.

        3. Right click on the file called `install` and choose `Open`
        4. If prompted with a security prompt, choose `Open`

    ??? example "Linux"
        --8<-- "gnome-crash-warning.md"

        1. Install the following using your distribution's package manager:
            * Python (2 or 3)
            * Python Tkinter
                * **Ubuntu**: `sudo apt-get install python-tk`
                * **Arch Linux**: `sudo pacman -S tk`
                * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
                * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution
        2. Download and extract the [Linux Installer](https://github.com/07th-mod/python-patcher/releases)
        3. Run the shell script called `install`

2. Opening the installer will launch a page in your browser. **Do not close this page**.
3. On the web page that was just launched, click on the game you want to mod.
4. Fill in your game path, and mod options as applicable, then start the installation.
5. To stop an install that is in progress, you MUST close the terminal window (the black box with lots of text).
6. Carefully read the information that appears once the install has finished.

### Installer FAQ and Troubleshooting

#### Can't launch installer - I get a `http.client.UnknownProtocol: HTTP/2.0` error when using a VPN or proxy

Please try running the installer without going through a VPN or proxy. Some company/school networks may also cause the same error, as they act as a proxy.

Specifically, UltraSurf is known to cause this problem.

----

!!! bug
    **This installer is currently in development.** You might find bugs, and things might not always work - We would be grateful if you report bugs on Github or our Discord server.

### Power Users

??? info "(Power Users Only) Install from Source"
    1. Install these dependencies:

        * Python (2 or 3)
        * Python Tkinter
        * 7-zip
        * Aria2
        * git

    2. Clone our git repository: `git clone https://github.com/07th-mod/python-patcher.git`
    3. Run `python main.py` or the equivalent command on your system

The web page is hosted entirely locally (and only on the loopback interface) on your computer by the installer - it is not hosted on a remote web page.
