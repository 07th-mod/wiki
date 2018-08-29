## Regarding Saves (Please Read)

Saves are NOT compatible between the stock game and the patched game. Saves between different versions of the patched game may or may not be compatible - they might skip you forwards / backwards in the script (the `0.u` file). For this reason, if you are 'updating' your script, you should do so after completing an episode. You could also load a very old save to determine if there is any offset in the script, but please be careful not to spoiler yourself by loading an incompatible save. 

I will attempt to make saves compatible for script files from Feb 24, 2018 onwards, but I can't guarantee it.

## ADV / Textbox Mode (For Chiru ONLY)
ADV Mode (where text appears in a textbox under the screen) is available for the Answer Arcs only:

**Normal Mode**

![Normal Mode](img/3.jpg)

**ADV Mode**

![ADV Mode](img/4.jpg)

If you wish to install ADV Mode for the Answer Arcs, complete the normal installation first. When you are finished, scroll to the bottom of this page to install ADV Mode. 

ADV Mode is **not** available for the Question arcs (eps 1-4).

## Installer (Windows only)

Currently, on Windows, there are two ways of installing the patch: the automatic installer, and the manual installation (see [Manual Installation](https://07th-mod/wiki/Umineko-Part-1---Voice-and-Graphics-Patch#manual-installation-windowslinuxmac)). In this section we are going to cover the installer method.

The installer will automatically download and install the following content:

* Full voiceover
* PS3 backgrounds in Full HD
* PS3 sprites and CGs (events) in Full HD
* Updated system menus and tips

Make sure to have at least 15gb of temporary space available, the full installed patch(game included) should be around 10gb. Note that the same installer is used for both the Higurashi and Umineko games (despite the name).

### How to install the patch

The new method makes the installation process very fast and painless.

- **Download the latest installer from [the Installer Releases page](https://github.com/07th-mod/Higurashi_Installer_WPF/releases/latest). Launch the program.**
- **You will be given the choice of Higurashi or Umineko - select the Umineko dropdown**
- **Choose whether you are installing the Question or Answer arcs by clicking on the correct icon**
- **Set the installation directory to your Steam game directory (also works for MangaGamer's DRM free release).** 
If you are unsure **where** the Steam game is located, open Steam and find it in your Steam library, right-click on it and choose ``Properties``. In the new window that just opened, click on the ``LOCAL FILES`` tab and then on the ``Browse local files...`` button. Copy the address bar in Windows Explorer and paste it in the installer's Windows Explorer window.
- **If the directory is correct, the software will validate the path and let you proceed with the installation.**
- **A progress bar and text will show the status of the installation** - bear with it, it may take a long time. Note that it may appear that the download step fails, and restarts. This is due to Github dropping connections if the download takes too long. The installer will save your download progress to compensate for this, so do not worry about losing your download progress. You can also close the program and start it again later, and it should keep your progress (for the Umineko games only, not Higurashi).
- **When the install is finished, the temporary install files will be displayed.** You can either back them up, or delete them. You should test the game works correctly if you wish to delete the install files. This is because most problems with the patch are to do with installing the game, and if you wish to re-install the game, it's much faster if you have the install files on hand.


Currently only the ***full*** installation method is available. We will include new options (voices only, custom installation) as they are developed.

> **PSA**: as reported, some antivirus softwares might warn you about the installer. **This is a false positive**, and it happens because the installer runs a batch file. The installer code can be freely accessed in our [Resource](https://github.com/07th-mod/resources) repository and is clean of viruses.

### How to update the patch

Currently, the installer will only install the newest version instead of updating it. At this stage, its likely only script updates will happen - that is, you only need to update the 0.utf and not any other files.

Please note that saves aren't necessarily compatible between patches - see the warning at the top of the page.

Sometime in the future, we plan to make a tool that allows you to update only the parts that have newer versions available. Until then, please bear with us.

***
## Installer script (Linux)

Prerequisites: 
- curl (You probably already have this)

```
# Run the following commands in a terminal.

# For Umineko Question Arcs
curl -o install.sh https://raw.githubusercontent.com/07th-mod/resources/master/umineko-question/install_linux.sh 

# For Umineko Answer Arcs
curl -o install.sh https://raw.githubusercontent.com/07th-mod/resources/master/umineko-answer/install_linux.sh 

chmod +x install.sh

# The script will attempt to find the game directory (default steam directory), if it fails you can specify it with ./install.sh path/to/game
./install.sh
```
## Installer script (Mac)
**This an __advanced installation method__. Don't try this unless you know what you're doing**.

Prerequisites: 
- 7-zip command line
- aria2c
- curl 

```
# Run the following commands in a terminal inside the game folder.

# Mac OSX:
brew install p7zip
brew install aria2

# For Umineko Question Arcs:
curl -O https://raw.githubusercontent.com/07th-mod/resources/master/umineko-question/install.sh

# For Umineko Answer Arcs:
curl -O https://raw.githubusercontent.com/07th-mod/resources/master/umineko-answer/install.sh

chmod 755 ./install.sh

./install.sh

```

> The installer script is secure and open-source for anyone to see. Check the code [here for Umineko Question Arcs](https://github.com/07th-mod/resources/blob/master/umineko-question/install.sh) and [here for Umineko Answer Arcs](https://github.com/07th-mod/resources/blob/master/umineko-answer/install.sh).

***

## Manual installation (Windows/Linux/Mac)

Manual installation is not recommended on Windows unless you have problems with the automatic installer. 

If you are on Linux or Mac, you can use the installer scripts above (the Linux installer script should be OK, but we haven't had any reports about the Mac installer script). 

Follow the table below to download all the pieces to install the patch:

> **Don't skip any links!** We can only guarantee the patch will work if you download all the parts of the chapter you want to play.

|         Chapter        |                               Patch (0.utf)                              |                                              Voices                                              |                                                                                                                                                        Graphics                                                                                                                                                       |                                                                                       Executable                                                                                       |                                                                                                 Updates                                                                                                |
|:----------------------:|:------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Question Arcs (Ch.1~4) | [Download<br>(Right Click,<br>Save As)](https://github.com/07th-mod/umineko-question/raw/master/InDevelopment/ManualUpdates/0.utf) |   [Download](https://07th-mod.com/Beato/Umineko-Voices.7z)   |      [Part 1](https://07th-mod.com/Beato/Umineko-Graphics.zip.001) <br> [Part 2](https://07th-mod.com/Beato/Umineko-Graphics.zip.002) <br> [Part 3](https://07th-mod.com/Beato/Umineko-Graphics.zip.003)     | [Windows](https://07th-mod.com/Beato/Umineko1to4.exe) <br> [Mac](https://07th-mod.com/Beato/0utf_umineko1to4.app.zip) <br> [Linux](https://07th-mod.com/Beato/Umineko1to4) | [Update v5 (2018-07-15)](https://07th-mod.com/Beato/Umineko-Update-v5_2018_07_15.zip) |
|  Answer Arcs (Ch.5~8)  |  [Download<br>(Right Click,<br>Save As)](https://github.com/07th-mod/umineko-answer/raw/master/0.utf)  | [Download](https://07th-mod.com/Bern/UminekoChiru-Voices.7z) | [Part 1](https://07th-mod.com/Bern/UminekoChiru-Graphics.7z.001) <br> [Part 2](https://07th-mod.com/Bern/UminekoChiru-Graphics.7z.002) <br> [Part 3](https://07th-mod.com/Bern/UminekoChiru-Graphics.7z.003) |    [Windows](https://07th-mod.com/Bern/Umineko5to8.exe) <br> [Mac](https://07th-mod.com/Bern/0utf_Umineko5to8.app.zip) <br> [Linux](https://07th-mod.com/Bern/Umineko5to8)  |                                                                                                  [Update v3 (2018-07-15) ](https://07th-mod.com/Bern/UminekoChiru-Update-v3_2018_07_15.zip)                                                                                                  |

### How to install the patch manually (for Windows and Mac)

1. Installing the graphics:
    - **Umineko Question Arcs**: Extract ``Umineko-Graphics.zip.001`` (the first part only, it should extract the rest automatically) inside the game folder.
    - **Umineko Answer Arcs**: Extract ``UminekoChiru-Graphics.7z.001`` (the first part only, it should extract the rest automatically) inside the game folder.
2. Installing the voices:
    - **Umineko Question Arcs**: Extract ``Umineko-Voices.zip`` inside the game folder.
    - **Umineko Answer Arcs**: Extract ``UminekoChiru-Voices.7z`` inside the game folder.
3. Rename the file ``0.utf`` inside your Umineko folder to ``0_old.utf`` (Backup the original script)
4. Installing the new script file:
    - **Windows/Linux**: Put the patched ``0.utf`` file inside the folder **and** rename it to ``0.u`` (yes, ``.u`` instead of ``.utf``)
    - **Mac**: Put the patched ``0.utf`` file inside the folder. DO NOT RENAME IT.
5. Rename and add the game executable:
    - **Umineko Question Arcs**:
        - **Windows**: Rename the file `Umineko1to4.exe` to `Umineko1to4_old.exe`. Put the patched `Umineko1to4.exe` inside the folder.
        - **Mac**: Extract the file ``Umineko1to4.app.zip`` inside the game folder. Overwrite all files if asked.
        - **Linux**: Rename the file `Umineko1to4` to `Umineko1to4_old`. Put the patched `Umineko1to4` inside the folder.
    - **Umineko Answer Arcs**:
        - **Windows**: Rename the file `Umineko5to8.exe` to `Umineko5to8_old.exe`. Put the patched `Umineko5to8.exe` inside the folder.
        - **Mac**: Extract the file ``Umineko5to8.app.zip`` inside the game folder. Overwrite all files if asked.
        - **Linux**: Rename the file ``Umineko5to8`` to ``Umineko5to8_old``. Put the patched `Umineko5to8` inside the folder.
6. Extract all updates (if available) in order of release (v1, v2, v3, ...) inside the game folder. Overwrite all files if asked.

## Updating from older versions

You can check for major updates in the [Getting Started - News](https://07th-mod/wiki/Umineko-Getting-started#news) section. YOU SHOULD ONLY UPDATE YOUR GAME IN BETWEEN CHAPTERS (eg, once you've completed an episode, and are on the main menu to start an episode). This is because changes to the script may cause your save files to stop working, or jump you forward in the game. Starting a new chapter from the main menu is fine, because it does not 'load' a save.

If you still have the downloaded install files, or you are willing to re-download the install files, you can use the the installer to update WITH SOME CAVEATS. You MUST delete the small files in the `temp` folder (keep the >500mb archives). Only then, start the installer. The installer should detect the large archives in the `temp` folder and not re-download them.

If you don't want to use the installer, you can (in most cases) update the game by:
- downloading the latest [0.utf] and the latest [Update Zip] in the table above
- extract the [Update Zip] to the game folder 
- **rename the [0.utf] as [0.u]** 
- overwrite the existing [0.u] in the game folder

If you are updating from a very old version of the game, it may be better that you fully re-install the game.

## ADV Mode (Chiru/Answer arcs ONLY)

ADV Mode (textbox at bottom of screen like in the PS3 Game) is for Chiru/Answer arcs ONLY! Do not attempt to install it for the question arcs!

1. Ensure that you have a working release of the full graphics patch of the Chiru Answer Arcs (Scroll back to top of this page to install it). There is currently no ADV mode for the question arcs.
2. Download the ADV mode 0.utf: [Right-Click this link to download 0.utf](https://github.com/07th-mod/umineko-answer/raw/adv_mode/0.utf). Replace the existing 0.u with the adv-mode 0.utf (rename it as 0.u).
3. Download and Unzip the assets: [ADV Assets download](https://07th-mod.com/Bern/UminekoChiru-ADV_Mode.7z) into the game folder (should replace existing fonts and add textbox folder).