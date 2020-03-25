## Multiplatform Installer Instructions

1. Click on your operating system below for instructions on downloading and launching the installer.

    ??? example "Windows"
        1. Download and Run the `07th-Mod.Installer.Windows.exe` file from the [Download Page](https://github.com/07th-mod/python-patcher/releases)
        2. A Windows SmartScreen warning may appear. If it does, click "More info", then choose "Run anyway".
        3. A console window will popup. DO NOT CLOSE THIS WINDOW until you are finished using the installer.
        4. Wait while the installer extracts to the folder `07th-mod_installer`.
        5. When extraction is finished, the installer GUI (a web page) will open. DO NOT CLOSE THIS PAGE.
        6. Continue with the instructions below.

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

    ??? example "Mac - If path auto-detection fails - Finding Game Path Manually"
        If game path auto-detection fails, you can follow these instructions to find the game path:

        1. Click the big green "Select Application (.app file) Manually (Open File Dialog)" button, just below the path entry textbox.
        2. A Finder window entitled "Please choose a game to install to" will open. We will leave it for now, but need it later so don't close it
        3. Open Steam, and navigate to your game list
        4. Right-click on the game you want to mod in the game list, and select "Properties"
        5. Navigate to the "LOCAL FILES" tab of the window that popped up
        6. Click "Browse Local Files". Another finder window will pop up, showing the game files.
        7. Locate the "Umineko1to4"/"HigurashiEp0X" file, which should visually have a proper game icon. Ignore the other files without a proper icon. These files have the ".app" extension, but the extension may be hidden.
        8. Drag and drop the file onto the previously opened "Please choose a game to install to" Finder Window
        9. Click the "Choose" button

        For reference, the default steam folder is `~/Library/Application Support/Steam/steamapps/common/`, but yours may be different.

5. To stop an install that is in progress, you MUST close the terminal window (the black box with lots of text).
6. Carefully read the information that appears once the install has finished.

(Power users can also try a few different ways of running the installer in [this page](../Installer/power-users.md))

## [❓] Installer Troubleshooting

1. Firstly, [check our FAQ](../Installer/faq.md) to see if your problem has already been answered.
2. If your issue is not resolved, please proceed to our [Installer support](../Installer/support.md) page.

## [❓] Game Troubleshooting

1. Check the [Higurashi FAQ](../Higurashi/FAQ.md) / [Umineko FAQ](../Umineko/Umineko-Part-0-TroubleShooting-and-FAQ.md)
2. If your issue is not resolved, please proceed to our [Higurashi Support](../Higurashi/support.md) / [Umineko Support](../Umineko/support.md) page
