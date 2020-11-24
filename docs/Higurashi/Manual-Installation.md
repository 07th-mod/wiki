# Manual installation (Windows/Linux/Mac)

!!! danger "This page is for manual install only. We highly recommend using the automated installer as installing manually can be error prone. Please see the [Cross Platform Installer](Higurashi-Part-1---Voice-and-Graphics-Patch.md), and follow the instructions"

----


## How to install the patch manually (for Windows, Linux, and Mac)

!!! hint "Where are the downloads?"
    All downloads are listed at the bottom of the page.

!!! hint "How do I extract .7z files?"
    Newer graphics patches requires an extraction software compatible with ``.7z`` files.

    * On Windows: Download [7-zip](http://7-zip.org/) (WinRAR is also acceptable)
    * On Linux: Install ``p7zip`` in your package manager
    * On Mac: Download [Keka](https://www.keka.io)


**On Windows or Linux (any distro):**

--8<-- "gnome-crash-warning.md"

1. Find and open your game folder
    * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
2. After downloading all the files needed for your version of the game, place them in the root folder (where the game ``.exe`` is)
3. Navigate inside ``HigurashiEp0X_Data/StreamingAssets`` (where ``X`` is the chapter number) and **delete** the folders ``CG`` and ``CGAlt``
    * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
4. Select all the downloaded files placed in the root directory **EXCEPT** the file called ``[CHAPTER TITLE].Voice.and.Graphics.Patch.[VERSION NUMBER].zip`` and extract them (protip: use ``Extract Here`` from the context menu)
    * Extract the mentioned file after extracting all the others. Overwrite all files if asked
5. Delete all the downloaded files after ensuring the game is working as expected

**On Mac OSX:**

1. Find and open your game folder
    * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
    * If you just see an icon called ``HigurashiEp0X`` (where ``X`` is the chapter number), you may need to right click it, then click "Show Package Contents" to show the ``Contents`` folder
    * The game folder (called ``Contents``) should contain some folders like ``Resources``, ``MacOS``, ``Plugins``, ``Frameworks``, and others - we will only be modifying the ``Resources`` folder
2. After downloading all the files needed for your version of the game, place them in ``Resources/Data``
3. Navigate inside ``Resources/Data/StreamingAssets`` and **delete** the folders ``CG`` and ``CGAlt``
    * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
4. Navigate back to ``Resources/Data`` folder and extract the downloaded files using the following method:
    * Extract all archives **EXCEPT** ``[CHAPTER TITLE].Voice.and.Graphics.Patch.[VERSION NUMBER].zip``
    * After all the other archives are extracted, you can then extract ``[CHAPTER TITLE].Voice.and.Graphics.Patch.[VERSION NUMBER].zip``
    * Overwrite all files if asked
    * When finished, this should produce a ``HigurashiEp0X_Data`` folder (where ``X`` is the chapter number) - the full path will be ``Resources/Data/HigurashiEp0X_Data``
5. Open a **terminal window** in the ``Resources/Data`` folder. [Follow these steps if you don't know how to do it](https://stackoverflow.com/a/7054045)
    1. In the terminal window, type: ``rsync -avP HigurashiEp*/* .`` and hit enter (type the ``*`` literally)
    2. Wait until the files are copied to the right place
6. Delete all the downloaded files and any leftover ``HigurashiEp0X_Data`` folders (where ``X`` is the chapter number) after ensuring the game is working as expected

***

## Console Arcs

!!! warning "The console arcs requires Ch.4 Himatsubushi to be played"
    Installing it in over your Himatsubushi installation will overwrite the game with the console arcs. We recommend to make a copy of the folder and install the console arcs there. **It is not required to install the Himatsubushi patch before installing the Console Arcs.**

<table>
<thead>
<tr class="header">
<th>〜☆</th>
<th>Console Arcs (all)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Patch</td>
<td><a href="https://github.com/07th-mod/higurashi-console-arcs/releases/latest">Download</a></td>
</tr>
<tr class="even">
<td>Graphics patch</td>
<td><a href="https://07th-mod.com/rikachama/graphics/ConsoleArcs-Graphics.7z">1440p</a></td>
</tr>
<tr class="odd">
<td>Voices</td>
<td><a href="https://07th-mod.com/rikachama/voice/ConsoleArcs-Voices.7z">Download</a></td>
</tr>
<tr class="even">
<td>Sound effects</td>
<td><a href="https://07th-mod.com/rikachama/audio/ConsoleArcs-SE.7z">Download</a></td>
</tr>
<tr class="odd">
<td>BGM</td>
<td><a href="https://07th-mod.com/rikachama/audio/ConsoleArcs-BGM.7z">Download</a></td>
</tr>
<tr class="even">
<td>Movies</td>
<td><a href="https://07th-mod.com/rikachama/video/ConsoleArcs-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/ConsoleArcs-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="odd">
<td>System files</td>
<td><a href="https://07th-mod.com/rikachama/misc/ConsoleArcs-System_win.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/misc/ConsoleArcs-System_unix.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td>UI Mod</td>
<td><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=win&unity=5.4.1f1">Windows</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=unix&unity=5.4.1f1">Mac/Linux</a></td>
</tr>
</tbody>
</table>

## Question Arcs

<table style="width:100%;">
<thead>
<tr class="header">
<th style="text-align: center;">〜☆</th>
<th style="text-align: center;">Ch.1 Onikakushi</th>
<th style="text-align: center;">Ch.2 Watanagashi</th>
<th style="text-align: center;">Ch.3 Tatarigoroshi</th>
<th style="text-align: center;">Ch.4 Himatsubushi</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Patch</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/onikakushi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/watanagashi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/tatarigoroshi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/himatsubushi/releases/latest">Download</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Graphics patch</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Onikakushi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Watanagashi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Tatarigoroshi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Himatsubushi-Graphics.7z">1440p</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Voices</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Onikakushi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Watanagashi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Tatarigoroshi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Himatsubushi-Voices.7z">Download</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Movies</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Onikakushi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Onikakushi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Watanagashi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Watanagashi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Tatarigoroshi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Tatarigoroshi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Himatsubushi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Himatsubushi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">UI Mod (Windows)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=win&unity=5.2.2f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=win&unity=5.2.2f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=win&unity=5.2.2f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=win&unity=5.2.2f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=win&unity=5.2.2f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=win&unity=5.2.2f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=win&unity=5.4.0f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=win&unity=5.3.5f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=win&unity=5.4.0f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=win&unity=5.4.1f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=win&unity=5.4.1f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=win&unity=5.4.1f1">GOG</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">UI Mod (Mac/Linux)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=unix&unity=5.2.2f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=unix&unity=5.2.2f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=onikakushi&os=unix&unity=5.2.2f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=unix&unity=5.2.2f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=unix&unity=5.2.2f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=watanagashi&os=unix&unity=5.2.2f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=unix&unity=5.4.0f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=unix&unity=5.3.4p1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=tatarigoroshi&os=unix&unity=5.4.0f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=unix&unity=5.4.1f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=unix&unity=5.4.1f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=unix&unity=5.4.1f1">GOG</a></td>
</tr>
</tbody>
</table>

## Answer Arcs

!!! warning "Important: about compatibility packs"
    Some chapters require extra files called **Compatibility packs**, such as **Ch.8 Matsuribayashi** from GOG on Windows and Linux. The patch will not work if the compatibility pack is not installed.

<table>
<thead>
<tr class="header">
<th style="text-align: center;">〜☆</th>
<th style="text-align: center;">Ch.5 Meakashi</th>
<th style="text-align: center;">Ch.6 Tsumihoroboshi</th>
<th style="text-align: center;">Ch.7 Minagoroshi</th>
<th style="text-align: center;">Ch.8 Matsuribayashi</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Patch</td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/meakashi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/tsumihoroboshi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/minagoroshi/releases/latest">Download</a></td>
<td style="text-align: center;"><a href="https://github.com/07th-mod/matsuribayashi/releases/latest">Download</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Graphics patch</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Meakashi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Tsumihoroboshi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Minagoroshi-Graphics.7z">1440p</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/Matsuribayashi-Graphics.7z">1440p</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Voices</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Meakashi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Tsumihoroboshi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Minagoroshi-Voices.7z">Download</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/Matsuribayashi-Voices.7z">Download</a></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Movies</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Meakashi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Meakashi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Tsumihoroboshi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Tsumihoroboshi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Minagoroshi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Minagoroshi-Movie_UNIX.7z">Mac/Linux</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/Matsuribayashi-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/Matsuribayashi-Movie_UNIX.7z">Mac/Linux</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">UI Mod (Windows)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=win&unity=5.5.3p3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=win&unity=5.5.3p3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=win&unity=5.5.3p3">GOG</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=win&unity=5.5.3p1">GOG (old)†</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=win&unity=5.5.3p3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=win&unity=5.5.3p3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=win&unity=5.5.3p3">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=win&unity=5.6.7f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=win&unity=5.6.7f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=win&unity=5.6.7f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=win&unity=2017.2.5">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=win&unity=2017.2.5">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=win&unity=2017.2.5">GOG</a><br></td>
</tr>
<tr class="odd">
<td style="text-align: center;">UI Mod (Mac/Linux)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=unix&unity=5.5.3p3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=unix&unity=5.5.3p3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=unix&unity=5.5.3p3">GOG</a><br><a href="https://07th-mod.com/ui.php?chapter=meakashi&os=unix&unity=5.5.3p1">GOG (old)†</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=unix&unity=5.5.3p3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=unix&unity=5.5.3p3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=tsumihoroboshi&os=unix&unity=5.5.3p3">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=unix&unity=5.6.7f1">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=unix&unity=5.6.7f1">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=minagoroshi&os=unix&unity=5.6.7f1">GOG</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=unix&unity=2017.2.5">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=unix&unity=2017.2.5">MangaGamer/GOG(MacOS)</a><br><a href="https://07th-mod.com/rikachama/ui/Matsuribayashi-UI_2017.2.5_unix_gog_mg.7z">Mangagamer/GOG(Linux)</a><br><br><a href="https://07th-mod.com/ui.php?chapter=matsuribayashi&os=unix&unity=2017.2.5">MangaGamer/GOG<br>(Linux Old)</a><br></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Compatibility packs</td>
<td style="text-align: center;">None</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/matsuri-system/Matsuribayashi-System.7z">Windows (MangaGamer Answer Arcs Bundle only)</a></td>
<td style="text-align: center;">None</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/matsuri-system/Matsuribayashi-System.7z">Windows (GOG only)</a><br><a href="https://07th-mod.com/rikachama/matsuri-system/Matsuribayashi-System_unix.7z">Linux (GOG only)</a></td>
</tr>
</tbody>
</table>

† If the regular "GOG" UI file does not work, try the "old" version (compatible with an older GOG release of the game).

## Optional downloads

### BGM and Sound Effect Patches

!!! warning "Different BGM and Sound Effects extraction location!"
    Unlike the other archives, **these files need to be extracted inside the ``StreamingAssets`` folder to work**. Overwrite all files if asked.

**Please see [this FAQ](FAQ.md#higurashi-music-and-sound-effects-changes-april-update) to understand what the BGM/SE Fixes do.** In summary, they partially revert the BGM/SE changes made in the April Higurashi update.

<table>
<colgroup>
<col style="width: 4%" />
<col style="width: 24%" />
<col style="width: 27%" />
<col style="width: 43%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Chapter</th>
<th style="text-align: center;">BGM</th>
<th style="text-align: center;">Sound Effects</th>
<th style="text-align: center;">Extras</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Question Arcs (all)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OldBGM.7z">Question Arcs BGM Fix</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OldSE.7z">Question Arcs Sound Effects Fix</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/misc/Higurashi.OST.Remake.zip">Higurashi OST Remake</a> <br> Handmade remakes of nerve's music. <b>Can be installed over Classic BGM.</b> <br> <a href="https://radiataalice.bandcamp.com/album/hinamizawa-syndrome-vol-1">(listen online)</a></td>
</tr>
<tr class="even">
<td style="text-align: center;">Answer Arcs (all)</td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OldBGM.7z">Answer Arcs BGM Fix</a></td>
<td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OldSE.7z">Answer Arcs Sound Effects Fix</a></td>
<td style="text-align: center;">None yet</td>
</tr>
</tbody>
</table>

### Third-Party - Language Patches

--8<-- "third-party-features.md"
