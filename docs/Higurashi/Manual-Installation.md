# Manual installation (Windows/Linux/Mac)

!!! danger "This page is for manual install only. We highly recommend using the automated installer as installing manually can be error prone. Please see the [Cross Platform Installer](Higurashi-Part-1---Voice-and-Graphics-Patch.md), and follow the instructions"

----

## General Information

!!! hint "Where are the downloads?"
    All downloads are listed at the bottom of the page.

!!! hint "How do I extract .7z files?"
    Newer graphics patches requires an extraction software compatible with ``.7z`` files.

    * On Windows: Download [7-zip](http://7-zip.org/) (WinRAR is also acceptable)
    * On Linux: Install ``p7zip`` in your package manager
    * On Mac: Download [Keka](https://www.keka.io)

## How to install the patch manually

Please select a tab below depending on your operating system.

=== "Windows/Linux"

    ### Windows/Linux Instructions

    --8<-- "gnome-crash-warning.md"

    1. Find and open your game folder
        * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
    2. In the below "Downloads" table, download **one file of each type**. That is, you'll need the following archives:
          * Patch
          * Graphics patch
          * Voices
          * BGM & SE
          * Movies (choose ONE according to your operating system)
          * UI Mod (choose ONE according to your operating system and game version)
          * Update
          * Console Arcs Only: System Files (choose ONE according to your operating system)
    3. Navigate inside ``HigurashiEp0X_Data/StreamingAssets`` (where ``X`` is the chapter number) and **delete** the folders ``CG`` and ``CGAlt``
        * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
    4. Now, extract the archives as follows:
        1. Any download without a emoji marker should extract to the game folder root (where the game ``.exe`` is). These archives will contain a `HigurashiEp0X_Data` folder, which should combine with the existing `HigurashiEp0X_Data` in the game folder.
        2. If a download has an emoji marker, follow the instructions in the corresponding footnote to determine how it should be extracted.
    5. Delete all the downloaded files after ensuring the game is working as expected

=== "Mac OSX"

    ### Mac OSX Instructions

    1. Find and open your game folder
        * On Steam: open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
        * If you just see an icon called ``HigurashiEp0X`` (where ``X`` is the chapter number), you may need to right click it, then click "Show Package Contents" to show the ``Contents`` folder
        * The game folder (called ``Contents``) should contain some folders like ``Resources``, ``MacOS``, ``Plugins``, ``Frameworks``, and others - we will only be modifying the ``Resources`` folder
    2. In the below "Downloads" table, download **one file of each type**. That is, you'll need the following archives:
          * Patch
          * Graphics patch
          * Voices
          * BGM & SE
          * Movies (choose ONE according to your operating system)
          * UI Mod (choose ONE according to your operating system and game version)
          * Update
          * Console Arcs Only: System Files (choose ONE according to your operating system)
    3. Navigate inside ``Resources/Data/StreamingAssets`` and **delete** the folders ``CG`` and ``CGAlt``
        * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
    4. Now, extract the archives as follows:
        1. Any download without a emoji marker should extract to the ``Resources/Data`` (where the game ``.exe`` is). These archives will contain a `HigurashiEp0X_Data` folder.
        2. If a download has an emoji marker, follow the instructions in the corresponding footnote to determine how it should be extracted (relative to the `Resources/Data` folder).
    5. When finished, this should produce a ``HigurashiEp0X_Data`` folder (where ``X`` is the chapter number) - the full path will be ``Resources/Data/HigurashiEp0X_Data``
    6. Open a **terminal window** in the ``Resources/Data`` folder. [Follow these steps if you don't know how to do it](https://stackoverflow.com/a/7054045)
        1. In the terminal window, type: ``rsync -avP HigurashiEp*/* .`` and hit enter (type the ``*`` literally)
        2. Wait until the files are copied to the right place
    7. Extract the BGM & SE archive inside the ``Resources/Data/StreamingAssets`` folder
    8. Delete all the downloaded files and any leftover ``HigurashiEp0X_Data`` folders (where ``X`` is the chapter number) after ensuring the game is working as expected

***

## Downloads

Please select a tab below to access the downloads that you require.

=== "Question Arcs"


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
    <td style="text-align: center;"><a href="https://github.com/07th-mod/onikakushi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/watanagashi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/tatarigoroshi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/himatsubushi/releases/latest">Download👀</a></td>
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
    <tr class="even">
    <td style="text-align: center;">BGM & SE</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/Higurashi-OG-BGM-SE.7z">Download ⚠️</a></td>
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
    <tr class="even">
    <td style="text-align: center;">Update</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/onikakushi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/watanagashi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/tatarigoroshi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/himatsubushi-og-dll-asset-update.7z">Download👀</a></td>
    </tr>
    </tbody>
    </table>
    
    **Please see [this FAQ](FAQ.md#higurashi-music-and-sound-effects-changes-april-update) to understand what the BGM/SE Fixes do.** In summary, they partially revert the BGM/SE changes made in the April Higurashi update.

    👀 Extract the `Patch` and `Update` archives LAST, after all other files (should combine with the existing `HigurashiEp0X_Data` folder). Overwrite any files if asked.

    ⚠️ Unlike all the other archives, the BGM/SE archive should be extracted to the ``HigurashiEp0X_Data/StreamingAssets`` folder (MacOS users should extract this archive second last).

=== "Answer Arcs"


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
    <td style="text-align: center;"><a href="https://github.com/07th-mod/meakashi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/tsumihoroboshi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/minagoroshi/releases/latest">Download👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/matsuribayashi/releases/latest">Download👀</a></td>
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
    <tr class="even">
    <td style="text-align: center;">BGM & SE</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OG-BGM-SE.7z">Download ⚠️</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/audio/HigurashiKai-OG-BGM-SE.7z">Download ⚠️</a></td>
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
    <tr class="even">
    <td style="text-align: center;">Update</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/meakashi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/tsumihoroboshi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/minagoroshi-og-dll-asset-update.7z">Download👀</a></td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/og-dll-asset-update/matsuribayashi-og-dll-asset-update.7z">Download👀</a></td>
    </tr>
    </tbody>
    </table>
    
    **Please see [this FAQ](FAQ.md#higurashi-music-and-sound-effects-changes-april-update) to understand what the BGM/SE Fixes do.** In summary, they partially revert the BGM/SE changes made in the April Higurashi update.

    👀 Extract the `Patch` and `Update` archives LAST, after all other files (should combine with the existing `HigurashiEp0X_Data` folder). Overwrite any files if asked.

    ⚠️ Unlike all the other archives, the BGM/SE archive should be extracted to the ``HigurashiEp0X_Data/StreamingAssets`` folder (MacOS users should extract this archive second last).

    † If the regular "GOG" UI file does not work, try the "old" version (compatible with an older GOG release of the game).

=== "Extra Arcs"


    <table>
    <thead>
    <tr class="header">
    <th style="text-align: center;">〜☆</th>
    <th style="text-align: center;">Ch.9 Rei</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td style="text-align: center;">Patch</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/higurashi-rei/releases/latest">Download👀</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Graphics patch</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/graphics/HigurashiRei-Graphics.7z">1440p</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Voices</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/voice/HigurashiRei-Voices.7z">Download</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">BGM & SE</td>
    <td style="text-align: center;">None</td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">Movies</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/rikachama/video/HigurashiRei-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/HigurashiRei-Movie_UNIX.7z">Mac/Linux</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">UI Mod (Windows)</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=win&unity=2019.4.3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=win&unity=2019.4.3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=win&unity=2019.4.3">GOG</a></td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">UI Mod (Mac/Linux)</td>
    <td style="text-align: center;"><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=unix&unity=2019.4.3">Steam</a><br><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=unix&unity=2019.4.3">MangaGamer</a><br><a href="https://07th-mod.com/ui.php?chapter=higurashirei&os=unix&unity=2019.4.3">GOG</a></td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">Compatibility packs</td>
    <td style="text-align: center;">None</td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Update</td>
    <td style="text-align: center;">None</td>
    </tr>
    </tbody>
    </table>

=== "Optional Q/A Downloads"


    !!! warning "Different BGM and Sound Effects extraction location!"
        Unlike the other archives, **these files need to be extracted inside the ``StreamingAssets`` folder to work**. Overwrite all files if asked.


    <table>
    <colgroup>
    <col style="width: 40%" />
    <col style="width: 60%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th style="text-align: center;">Chapter</th>
    <th style="text-align: center;">Extras</th>
    </tr>
    </thead>
    <tbody>
    <tr class="even">
    <td style="text-align: center;">Question Arcs Chapter 1</td>
    <td style="text-align: center;">None</td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">Question Arcs Chapters 2,3,4</td>
    <td style="text-align: center;">
        <a href="https://07th-mod.com/rikachama/audio/Higurashi-Remake-BGM.7z">OST Remake</a><br>
        <strong>NOTE:</strong> Extract to the <code>HigurashiEp0X_Data/StreamingAssets</code> folder, producing a <code>RemakeBGM</code> folder.<br><br>
        Handmade remakes of nerve's music <a href="https://radiataalice.bandcamp.com/album/hinamizawa-syndrome-vol-1">(listen online)</a><br>
        Installing this will enable the option in the Mod Menu
    </td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">Answer Arcs</td>
    <td style="text-align: center;">None yet</td>
    </tr>
    </tbody>
    </table>

=== "Console Arcs"


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
    <td><a href="https://github.com/07th-mod/higurashi-console-arcs/releases/latest">Download👀</a></td>
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
    <td><a href="https://07th-mod.com/rikachama/audio/ConsoleArcs-SE.7z">Download🚩</a></td>
    </tr>
    <tr class="odd">
    <td>BGM</td>
    <td><a href="https://07th-mod.com/rikachama/audio/ConsoleArcs-BGM.7z">Download🚩</a></td>
    </tr>
    <tr class="even">
    <td>Movies</td>
    <td><a href="https://07th-mod.com/rikachama/video/ConsoleArcs-Movie.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/video/ConsoleArcs-Movie_UNIX.7z">Mac/Linux</a></td>
    </tr>
    <tr class="odd">
    <td>System files</td>
    <td><a href="https://07th-mod.com/rikachama/misc/ConsoleArcs-System_win.7z">Windows</a><br><a href="https://07th-mod.com/rikachama/misc/ConsoleArcs-System_linux.7z">Linux</a><br><a href="https://07th-mod.com/rikachama/misc/ConsoleArcs-System_mac.7z">Mac</a></td>
    </tr>
    <tr class="even">
    <td>UI Mod</td>
    <td><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=win&unity=5.4.1f1">Windows</a><br><a href="https://07th-mod.com/ui.php?chapter=himatsubushi&os=unix&unity=5.4.1f1">Mac/Linux</a></td>
    </tr>
    <tr class="odd">
    <td>Update</td>
    <td><a href="https://07th-mod.com/rikachama/og-dll-asset-update/console-og-dll-asset-update.7z">Download</a></td>
    </tr>
    </tbody>
    </table>

    👀 Extract the `Patch` archive LAST, after all other files (should combine with the existing `HigurashiEp04_Data` folder). Overwrite any files if asked.

    🚩 Extract these files normally (should combine with the existing `HigurashiEp04_Data` folder). No special handling is required.

=== "Language Patches"


    --8<-- "third-party-features.md"
