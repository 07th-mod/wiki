## Multiplatform Installer Instructions

**Please select your operating system from the tabs below**

=== "Windows"

    ## Starting the installer
    1. Download `07th-Mod.Installer.Windows.exe` to your computer from the [Download Page](https://github.com/07th-mod/python-patcher/releases). **Do not run it directly from your browser** - download it first.
        - If a "Windows SmartScreen" warning appears, click "More info", then choose "Run anyway".
    2. Run the installer - the installer launcher will appear and extract to `07th-mod_installer`.
        - **Do not close this window** until you are finished using the installer.
    3. When extraction is finished, click "Run Installer".
    4. The installer will open as a web page in your browser. This is the installer's interface.
        1. **Please note: if a page takes too long to load, try refreshing the page**
        2. If you still cannot get the web page to load, restart the installer launcher, and enable the `Run in Safe-Mode` checkbox to run the text-based installer.

    ## Using the installer

    1. On the web page that was just launched, click on the mod you want to install.
    2. Fill in your game path, and mod options as applicable, then start the installation.
    3. If you wish to stop an install that is in progress, you MUST either click the **Quit Installer** button, or close the launcher. If you just close the webpage, the install will still run in the background!
    4. When the install finishes, "The install was successful!" will be displayed. Please carefully read the information that is displayed, which may contain gotchas/extra tasks you may need to do.

=== "Mac"

    ## MacOS 12 (Monterey) and Higher - Installing Python 3

    You **only need to perform these steps on MacOS Monterey and higher**, which do not come with Python:

    1. Go to [https://www.python.org/downloads/](https://www.python.org/downloads/)
    2. Download Python 3 using the yellow download button near the top of the page
    3. Run the Python 3 installer, and follow the prompts to complete the install

    ## Starting the mod installer
    1. Download the [Mod Installer for Mac](https://github.com/07th-mod/python-patcher/releases)
    2. Double-click on the zip file to extract it (your browser might automatically do this after downloading)

        - **Warning**: Do not move the `install.command` file out of the extracted folder.

        ??? example "Click here if you want to move the install.command file for some reason"

            The zip contains two hidden files that are required by the installer. If you try to move the `install.command` file out of the folder, it won't be able to find them.

            If you really want to move the `install.command` file out of the folder, press ⇧⌘. (Shift-Command-Period) to temporarily enable showing of hidden files and copy the `.7za` and `.aria2c` files to the same folder.

    3. In the extracted files, look for a file called `install.command` (might also be called `install`).
    4. Right click on this file and choose `Open`
        1. If you get a "Operation not permitted" error, [try following these steps](https://osxdaily.com/2018/10/09/fix-operation-not-permitted-terminal-error-macos/) to give Terminal the correct permissions.
        2. If prompted with a security prompt, choose `Open`
        3. If you cannot get the web page to load, run the `install_safe_mode.command` (might be called `install_safe_mode`) file instead to use the text-based installer
        4. If the window immediately disappears / does nothing and you are on MacOS 12 (Monterey) or higher, check you have installed Python 3 as per above instructions
    5. Opening the installer will launch a page in your browser. This is the installer's interface.
        - If the browser is launched, but the page does not load, try refreshing the page
        - **Do not close the page until the install finishes**

    --8<-- "installer-usage.md"

    ??? example "If path auto-detection fails - Finding Game Path Manually"
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

=== "Linux / Proton / Wine"

    !!! warning "If you're using a Steam Deck, please click the 'Steam Deck' tab above!"

    --8<-- "installer-linux-wine-proton.md"

    ## Downloading and Starting the installer

    1. Install the following using your distribution's package manager:
        * Python 3.7 and above
            * You *can* use Python 2, but some browsers will require you manually refresh the page for the installer to load.
        * Optional: Python Tkinter (This is required to use the file-picker in the installer. Just use autodetection/paste in the game path if you can't install this.)
            * **Ubuntu**: `sudo apt-get install python-tk`
            * **Arch Linux**: `sudo pacman -S tk`
            * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
            * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution
        * **openSUSE** users will need to install the package `python-xml` or the installer will fail with `No module named xml.etree.ElementTree`
        * **32-bit linux** users will need the following
            * p7zip (get the '**full**' version) `sudo apt install p7zip-full`
            * aria2 `sudo apt install aria2`
    2. Download `07th-Mod.Installer.linux.tar.gz` to your computer from the [our Github Releases page](https://github.com/07th-mod/python-patcher/releases)
    3. Run the shell script called `setup`. The installer will open as a web page in your browser.
        1. You will most likely need to open a terminal and run it from there, unless your file browser supports running the script directly.
        2. If you still cannot get the web page to load, run `setup_safe_mode` to use the text-based installer.
    4. Opening the installer will launch a page in your browser. This is the installer's interface.
        1. If the browser window doesn't appear, you can manually copy or type the link into your browser. Usually the address will be `http:127.0.0.1:8000/loading_screen.html`, but the `8000` number may be different so be careful.
        2. If the browser is launched, but the page does not load, try refreshing the page
        3. **Do not close the page until the install finishes**

    --8<-- "installer-usage.md"

=== "Steam Deck"

    !!! warning "The Steam Deck is new, so these instructions may become out of date quickly. Please let us know if these instructions don't work or need updating"

    ## Steam Deck REQUIRED Initial Setup

    1. You MUST enable Desktop Mode from the STEAM menu, by selecting "Power", then "Switch to Desktop".
    2. **You MUST install Firefox via Discover** for the installer to open automatically in your browser
        1. If you're not sure, just install Firefox to make things easy.
        2. If you want to use another browser, you will need to manually copy the installer URL that is printed in the Konsole terminal. Instructions to do this are listed in "Downloading and Starting the installer" below.
    3. We **highly recommend** plugging in a mouse and keyboard into the Steam Deck to make using the installer easier.

    --8<-- "installer-linux-wine-proton.md"

    ## Downloading and Starting the installer

    1. Download `07th-Mod.Installer.linux.tar.gz` to your computer from the [our Github Releases page](https://github.com/07th-mod/python-patcher/releases) to your `Downloads` folder.
    2. Right click the archive, then click "Extract" > "Extract archive here", which should create the folder "07th-Mod_Installer_Linux64".
        ![Extract archive here](https://07th-mod.com/wiki/img/steamdeck-extract-here.png)
    3. Right click the `setup` file located in the "07th-Mod_Installer_Linux64" folder, then click "Run In Konsole"
        ![Run in Konsole](https://07th-mod.com/wiki/img/steamdeck-run-in-konsole.png)
    4. After some time, *hopefully* the installer's interface will open as a web page in your browser. If it does not, see instructions below.
        1. **Most likely you did not install Firefox earlier via Discover**. Install it now, then restart the installer.
        2. As an alternative, you can manually right-click and 'Copy Link Address', then paste the link into your browser. Usually the address will be `http:127.0.0.1:8000/loading_screen.html`.
        ![Copy Link Address](https://07th-mod.com/wiki/img/steamdeck-copy-link-address.png)
        3. If the browser is launched, but the page does not load, try refreshing the page
        4. If you still cannot get the web page to load, run `setup_safe_mode` to use the text-based installer.

    --8<-- "installer-usage.md"

=== "Power Users"

    Power users can try a few different ways of running the installer on [this page](../Installer/power-users.md)

    --8<-- "installer-usage.md"

## Resuming an install / Restarting a failed install

If the install fails:

1. Refresh the page
2. Double check the options are the same the last attempt (the installer should remember)
3. Start the installation

If you quit the installer while it was running:

1. Start the installer again
2. Select the same options as the last attempt
3. Start the installation

In most cases the installer will resume downloads, so you don't need to re-download everything. Please ignore any "checksum failed" warnings if you get them - this is normal.

## Updating Games

To update your game, run the installer again for the game you want to update - **remember to use the same mod options as before**. The installer should install the updated components, and any other dependent components.

## [❓] Game and Installer Troubleshooting

1. For Install Problems, check the [Installer FAQ](../Installer/faq.md) to see if your problem is already answered.
2. For Game Problems, Check the [Higurashi FAQ](../Higurashi/FAQ.md) / [Umineko FAQ](../Umineko/Umineko-Part-0-TroubleShooting-and-FAQ.md)
3. If your issue is not resolved, please proceed to the [Support Checklist](../support-checklist.md)

## Uninstalling Games

To fully remove the game and mod files, you **must** follow the below instructions:

1. Navigate to the game folder. In Steam, you can do the following to show the game folder:
      1. Right click on the game in Steam, then click "Properties"
      2. Change to the "Local Files" tab
      3. Click "Browse Local Files..." and the folder should appear
2. Remove the game "normally". You can use Windows "Add or Remove Programs", or use the Steam/GOG launcher (if you installed with Steam/GOG).
3. **Manually delete the game folder** if it's not already deleted!

    You **MUST** do this step to fully remove the mod files! If you do not do this, the installer may not work on future installs, and the mod files will take up space on your computer. Steam is known to keep mod files during uninstall.

### Optional: Uninstall Save Files

You may want to remove save files if you're having technical issues and want to start from scratch:

   1. For Higurashi, save files are kept outside the game directory. See [FAQ: "Save File Locations"](../Higurashi/FAQ.md#save-file-locations) to find the save files, then delete them.
   2. For Umineko, usually the save files are kept in the `mysav` folder of the game directory, so they would already be removed. But see [FAQ: "My save files have disappeared or changed unexpectedly"](../Umineko/Umineko-Part-0-TroubleShooting-and-FAQ.md#my-save-files-have-disappeared-or-changed-unexpectedly) for more details.
