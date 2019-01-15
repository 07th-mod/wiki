# Installing the patch

> PSA: Don't forget to check ["Patch configuration and extras"](https://07th-mod.com/wiki/Higurashi/Higurashi-Part-2---Patch-configuration-and-keyboard-shortcuts) after installing the patch manually or using the installer.

## Installer (Windows only)

The installer combines all the patches available to create the best experience possible. It will automatically download and install the following content:

* Full voiceover
* PS3 backgrounds and CGs in Full HD
* PS3 sprites with lipsync in 1440p
* Updated MangaGamer sprites in 1440p
* Upgraded user interface
* Opening videos

1. Download the latest installer from [the Installer Releases page](https://github.com/07th-mod/Higurashi_Installer_WPF/releases/latest)
2. Open the software
3. You will be given the choice of Higurashi or Umineko - select the Higurashi dropdown
4. Choose the chapter you want to patch by clicking on the correct icon** (protip: mouse over the icons to see the banners for each chapter!)
5. Set the installation directory to your game directory **(supports Steam, GOG and MangaGamer releases)**
    * If you are unsure **where** the Steam game is located, open Steam and find it in your Steam library, right-click on it and choose ``Properties``. In the new window that just opened, click on the ``LOCAL FILES`` tab and then on the ``Browse local files...`` button. Windows Explorer will then open showing you where the game is installed
6. If the directory is correct, the software will validate the path and let you proceed with the installation
7. A progress bar and text will show the status of the installation

> **PSA**: as reported, some antivirus software might warn you about the installer. **This is a false positive**, and it happens because the installer is either new or not verified by the antivirus databases yet. The installer code can be freely accessed in our Github organization and will be only compiled from a trusted source.

## Multiplatform installer (Windows, Mac and Linux)

> **This installer is currently in active development.** Bugs might happen and things might not work. 
> If you are running Windows, we recommend using the solution **above**.

This installer is an alternative to the method above, however fully multiplatform. That means you can automatically install the patch on Linux and Mac from now on, with the small downside of an uglier interface. We promise the plan is to make it look just like the native Windows installer, these things take time to develop.

**Using this installer should install the exact same features as the Windows installer.** Check above for more information on what the installer does.

#### Windows

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
    * Install Python (2 or 3)
    * Install Python Tkinter
        * **Ubuntu**: `sudo apt-get install python-tk`
        * **Arch Linux**: `sudo pacman -S tk`
        * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
        * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution.
2. Download and extract the [Linux Installer](http://07th-mod.com/installer/python/higu_linux64_installer.tar.gz).
3. Run the shell script called `install`

**Alternatively,** you can also download and run this Python file: [higurashiInstaller.py](https://raw.githubusercontent.com/07th-mod/resources/master/higurashiInstaller.py)

It requires the following dependencies:

* Python (2 or 3)
* Python Tkinter
* 7-zip
* Aria2

***

## Manual installation (Windows/Linux/Mac)

Follow the table below to download all the pieces to install the patch:

> **Downloads that can be skipped**: Steam sprites patch,  UI Mod and opening video. For the full experience, download all packs.

#### Console Arcs

> **The console arcs requires Ch.4 Himatsubushi to be played.** Installing it in your Himatsubushi installation will overwrite the game with the console arcs. We recommend to make a copy of the folder and install the console arcs there.

<table>
<colgroup>
<col style="width: 4%" />
<col style="width: 16%" />
<col style="width: 12%" />
<col style="width: 13%" />
<col style="width: 12%" />
<col style="width: 12%" />
<col style="width: 28%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Chapter</th>
<th style="text-align: center;">Patch</th>
<th style="text-align: center;">Graphics patch</th>
<th style="text-align: center;">Voices</th>
<th style="text-align: center;">BGM</th>
<th style="text-align: center;">Sound effects</th>
<th style="text-align: center;">UI Mod</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Console Arcs (all)</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/higurashi-console-arcs/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/ConsoleArcs-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/ConsoleArcs-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/ConsoleArcs-BGM.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/ConsoleArcs-SE.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Himatsubushi-UI_UNIX.7z">Mac/Linux</a></td>
</tr>
</tbody>
</table>

#### Question and Answer Arcs

<table>
<colgroup>
<col style="width: 3%" />
<col style="width: 10%" />
<col style="width: 8%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 39%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Chapter</th>
<th style="text-align: center;">Patch</th>
<th style="text-align: center;">Graphics patch</th>
<th style="text-align: center;">Steam sprites patch</th>
<th style="text-align: center;">Voices</th>
<th style="text-align: center;">UI Mod</th>
<th style="text-align: center;">Opening video</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Ch.1 - Onikakushi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/onikakushi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Onikakushi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Onikakushi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Onikakushi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Onikakushi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Onikakushi-UI_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Onikakushi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Onikakushi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Ch.2 - Watanagashi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/watanagashi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Watanagashi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Watanagashi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Watanagashi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Watanagashi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Watanagashi-UI_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Watanagashi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Watanagashi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Ch.3 - Tatarigoroshi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/tatarigoroshi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tatarigoroshi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tatarigoroshi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tatarigoroshi-Voices.7z">Download</a></td>
<td style="text-align: center;">Windows <a href="https://07th-mod.com/rikachama/Tatarigoroshi-UI.7z">Steam</a> / <a href="https://07th-mod.com/rikachama/Tatarigoroshi-UI_MG.7z">DRM-Free</a> <br> Mac/Linux <a href="https://07th-mod.com/rikachama/Tatarigoroshi-UI_UNIX.7z">Steam</a> / <a href="https://07th-mod.com/rikachama/Tatarigoroshi-UI_UNIX-MG.7z">DRM-Free</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tatarigoroshi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Tatarigoroshi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Ch.4 - Himatsubushi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/himatsubushi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Himatsubushi-UI_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Himatsubushi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Himatsubushi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Ch.5 - Meakashi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/meakashi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Meakashi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Meakashi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Meakashi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Meakashi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Meakashi-UI_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Meakashi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Meakashi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Ch. 6 - Tsumihoroboshi</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/tsumihoroboshi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tsumihoroboshi-CG.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tsumihoroboshi-CGAlt.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tsumihoroboshi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tsumihoroboshi-UI.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Tsumihoroboshi-UI_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/Tsumihoroboshi-Movie.7z">Windows</a> <br> <a href="https://07th-mod.com/rikachama/Tsumihoroboshi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
</tbody>
</table>

***

### How to install the patch manually (for Windows, Linux, and Mac)

> Newer graphics patches requires an extraction software compatible with ``.7z``.

> * On Windows: [WinRAR (paid)](https://www.win-rar.com/start.html?&L=0) or [7-zip (free)](http://7-zip.org/)
> * On Linux: ``p7zip`` in your package manager
> * On Mac: [Keka](https://www.keka.io)


**On Windows or Linux (any distro):**

1. Find and open your game folder 
    * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
2. After downloading all the files needed for your version of the game, place them in the root folder (where the game ``.exe`` is)
3. Navigate inside ``HigurashiEp0*_Data/StreamingAssets`` (where ``*`` is the chapter number) and **delete** the folders ``CG`` and ``CGAlt``
    * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
4. Select all the downloaded files placed in the root directory **EXCEPT** the file called ``[CHAPTER TITLE].Voice.and.Graphics.Patch.[VERSION NUMBER].zip`` and extract them (protip: use ``Extract Here`` from the context menu)
    * Extract the mentioned file after extracting all the others. Overwrite all files if asked
5. Delete all the downloaded files after ensuring the game is working as expected

**On Mac OSX:**
> Mac users can normally follow the Windows instructions, but if the slightly different folders confuse you, try these steps:

1. Find and open your game folder 
    * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
2. After downloading all the files needed for your version of the game, place them in ``Resources/Data``
3. Navigate inside ``Resources/Data/StreamingAssets`` and **delete** the folders ``CG`` and ``CGAlt``
    * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
4. Navigate back to ``Resources/Data`` and extract the downloaded files in any oder **EXCEPT** the file called ``[CHAPTER TITLE].Voice.and.Graphics.Patch.[VERSION NUMBER].zip``
    * Extract the mentioned file after extracting all the others. Overwrite all files if asked
5. Open a **terminal window** in the``Data`` folder. [Follow these steps if you don't know how to do it](https://stackoverflow.com/a/7054045).
    1. In the terminal window, type: ``rsync -avP HigurashiEp*/* .`` and hit enter
    2. Wait until the files are copied to the right place
6. Delete all the downloaded files and any leftover ``HigurashiEp**_Data`` folders after ensuring the game is working as expected
