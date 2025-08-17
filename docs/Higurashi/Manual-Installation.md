# Manual installation (Windows/Linux/Mac)

!!! danger "This page is for manual install only. We highly recommend using the automated installer as installing manually can be error prone. Please see the [Cross Platform Installer](Higurashi-Part-1---Voice-and-Graphics-Patch.md), and follow the instructions"

--8<-- "higurashi-saves-warning.md"

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
          * Base Assets
          * UI Mod (choose ONE according to your operating system and game version)
          * System Files/Compatability Pack (if available/necessary)
          * For Chapters 2,3,4, you can install "Optional Packs" if desired
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
          * Base Assets
          * UI Mod (choose ONE according to your operating system and game version)
          * System Files/Compatability Pack (if available/necessary)
          * Optionally install "Optional Packs" (only for Chapters 2,3,4)
    3. Navigate inside ``Resources/Data/StreamingAssets`` and **delete** the folders ``CG`` and ``CGAlt``
        * This is not a requirement but we recommend to delete the mentioned folders to save disk space and avoid any random issues
    4. Now, extract the archives as follows:
        1. Any download without a emoji marker should extract to the ``Resources/Data`` (where the game ``.exe`` is). These archives will contain a `HigurashiEp0X_Data` folder.
        2. If a download has an emoji marker, follow the instructions in the corresponding footnote to determine how it should be extracted (relative to the `Resources/Data` folder).
    5. When finished, this should produce a ``HigurashiEp0X_Data`` folder (where ``X`` is the chapter number) - the full path will be ``Resources/Data/HigurashiEp0X_Data``
    6. Open a **terminal window** in the ``Resources/Data`` folder. [Follow these steps if you don't know how to do it](https://stackoverflow.com/a/7054045)
        1. In the terminal window, type: ``rsync -avP HigurashiEp*/* .`` and hit enter (type the ``*`` literally)
        2. Wait until the files are copied to the right place
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
    <td style="text-align: center;"><a href="https://github.com/07th-mod/onikakushi/releases/latest">Ch.1 Patch 👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/watanagashi/releases/latest">Ch.2 Patch 👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/tatarigoroshi/releases/latest">Ch.3 Patch 👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/himatsubushi/releases/latest">Ch.4 Patch 👀</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Base Assets</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/onikakushi-v1.0/onikakushi-base.7z">Ch.1 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/watanagashi-v1.0/watanagashi-base.7z">Ch.2 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/tatarigoroshi-v1.0/tatarigoroshi-base.7z">Ch.3 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/himatsubushi-v1.0/himatsubushi-base.7z">Ch.4 Base</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">UI Mod (Windows)</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/onikakushi-v1.0/Onikakushi-UI_5.2.2f1_win.7z">Ch.1 Win UI</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/watanagashi-v1.0/Watanagashi-UI_5.2.2f1_win.7z">Ch.2 Win UI</a></td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/tatarigoroshi-v1.0/Tatarigoroshi-UI_5.4.0f1_win.7z">Steam and GOG UI</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/tatarigoroshi-v1.0/Tatarigoroshi-UI_5.3.5f1_win.7z">MangaGamer UI</a>
    </td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/himatsubushi-v1.0/Himatsubushi-UI_5.4.1f1_win.7z">Ch.4 Win UI</td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">UI Mod (Mac/Linux)</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/onikakushi-v1.0/Onikakushi-UI_5.2.2f1_unix.7z">Ch.1 Mac/Linux</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/watanagashi-v1.0/Watanagashi-UI_5.2.2f1_unix.7z">Ch.2 Mac/Linux</a></td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/tatarigoroshi-v1.0/Tatarigoroshi-UI_5.4.0f1_unix.7z">Steam and GOG UI</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/tatarigoroshi-v1.0/Tatarigoroshi-UI_5.3.4p1_unix.7z">MangaGamer UI</a>
    </td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/himatsubushi-v1.0/Himatsubushi-UI_5.4.1f1_unix.7z">Ch.4 Mac/Linux</a></td>
    </tr>
    </tbody>
    </table>

    👀 Extract the `Patch` and `Update` archives LAST, after all other files (should combine with the existing `HigurashiEp0X_Data` folder). Overwrite any files if asked.

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
    <td style="text-align: center;"><a href="https://github.com/07th-mod/meakashi/releases/latest">Ch.5 Patch👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/tsumihoroboshi/releases/latest">Ch.6 Patch👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/minagoroshi/releases/latest">Ch.7 Patch👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/matsuribayashi/releases/latest">Ch.8 Patch👀</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Base Assets</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/meakashi-v1.0/meakashi-base.7z">Ch.5 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/tsumihoroboshi-v1.0/tsumihoroboshi-base.7z">Ch.6 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/minagoroshi-v1.0/minagoroshi-base.7z">Ch.7 Base</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/matsuribayashi-base.7z">Ch.8 Base</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">UI Mod (Windows)</td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/meakashi-v1.0/Meakashi-UI_5.5.3p3_win.7z">Win Default</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/meakashi-v1.0/Meakashi-UI_5.5.3p1_win.7z">Win GOG†</a>
    </td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/tsumihoroboshi-v1.0/Tsumihoroboshi-UI_5.5.3p3_win.7z">Ch.6 Win UI</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/minagoroshi-v1.0/Minagoroshi-UI_5.6.7f1_win.7z">Ch.7 Win UI</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/Matsuribayashi-UI_2017.2.5_win.7z">Ch.8 Win UI</a></td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">UI Mod (Mac/Linux)</td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/meakashi-v1.0/Meakashi-UI_5.5.3p3_unix.7z">Default</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/meakashi-v1.0/Meakashi-UI_5.5.3p1_unix.7z">GOG†</a>
    </td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/tsumihoroboshi-v1.0/Tsumihoroboshi-UI_5.5.3p3_unix.7z">Ch.6 Mac/Linux</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/minagoroshi-v1.0/Minagoroshi-UI_5.6.7f1_unix.7z">Ch.7 Mac/Linux</a></td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/Matsuribayashi-UI_2017.2.5_unix.7z">Default</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/Matsuribayashi-UI_2017.2.5_unix_gog_mg.7z">MG/GOG (alt)</a>
    </td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">Compatibility packs</td>
    <td style="text-align: center;">None</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/tsumihoroboshi-v1.0/Tsumihoroboshi-System.7z">Windows<br>(MangaGamer Answer<br>Arcs Bundle only)</a></td>
    <td style="text-align: center;">None</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/Matsuribayashi-System.7z">Windows (GOG only)</a><br><a href="https://github.com/07th-mod/patch-releases/releases/download/matsuribayashi-v1.0/Matsuribayashi-System_unix.7z">Linux (GOG only)</a></td>
    </tr>
    </tbody>
    </table>

    👀 Extract the `Patch` and `Update` archives LAST, after all other files (should combine with the existing `HigurashiEp0X_Data` folder). Overwrite any files if asked.

    † If the regular "GOG" UI file does not work, try the "Default" version (compatible with an older GOG release of the game).

=== "Extra Arcs"

    There are still some known issues / missing features in Rei. Please see the [latest release](https://github.com/07th-mod/higurashi-rei/releases/latest) for more information.

    <table>
    <thead>
    <tr class="header">
    <th style="text-align: center;">〜☆</th>
    <th style="text-align: center;">Ch.9 Rei</th>
    <th style="text-align: center;">Ch.10 Hou+</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td style="text-align: center;">Patch</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/higurashi-rei/releases/latest">Ch.9 Patch 👀</a></td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/hou-plus/releases/latest">Ch.10 Patch 👀</a></td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">Base Assets</td>
    <td style="text-align: center;"><a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/rei-base.7z">Ch.9 Base</a></td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/hou-plus-v1.0/hou-base.7z.001">Base Part 1/3</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/hou-plus-v1.0/hou-base.7z.002">Base Part 2/3</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/hou-plus-v1.0/hou-og-sprites-backgrounds-v2.7z">Base OG Assets 3/3</a>
    </td>
    </tr>
    <tr class="even">
    <td style="text-align: center;">UI Mod (Windows)</td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.3_win.7z">Steam and GOG</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.4_win.7z">MangaGamer</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.3_win.7z">MangaGamer Old⚠️</a><br>
    </td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/hou-plus-v1.0/Hou-Plus-UI_2019.4.4_win.7z">Ch.10 Win UI</a><br>
    </td>
    </tr>
    <tr class="odd">
    <td style="text-align: center;">UI Mod (Mac/Linux)</td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.3_unix.7z">Steam and GOG</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.4_unix.7z">MangaGamer</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/rei-v1.0/Rei-UI_2019.4.3_unix.7z">MangaGamer Old⚠️</a><br>
    </td>
    <td style="text-align: center;">
        <a href="https://github.com/07th-mod/patch-releases/releases/download/hou-plus-v1.0/Hou-Plus-UI_2019.4.4_unix.7z">Ch.10 UI Mac/Linux</a><br>
    </td>
    </tr>
    </tbody>
    </table>

    👀 Extract the `Patch` and `Update` archives LAST, after all other files (should combine with the existing `HigurashiEp0X_Data` folder). Overwrite any files if asked.

    ⚠️ You only need this if you downloaded the unmodded game installer an extremly long time ago. We recommend you re-download the latest unmodded game installer from MangaGamer and re-install, rather than using this file.

=== "Optional Packs"


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
        <a href="https://github.com/07th-mod/patch-releases/releases/download/untagged-82a3feaa6fe760c53703/Higurashi-Remake-BGM.7z">OST Remake</a><br>
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
    <td><a href="https://github.com/07th-mod/higurashi-console-arcs/releases/latest">Patch 👀</a></td>
    </tr>
    <tr class="even">
    <td>Base Assets</td>
    <td><a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/console-base.7z.001">Base Part 1/3</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/console-base.7z.002">Base Part 2/3</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/console-base.7z.003">Base Part 3/3</a></td>
    </tr>
    <tr class="odd">
    <td>System files</td>
    <td>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/ConsoleArcs-System_win.7z">Windows System</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/ConsoleArcs-System_linux.7z">Linux System</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/ConsoleArcs-System_mac.7z">Mac System🎮</a></td>
    </tr>
    <tr class="even">
    <td>UI Mod</td>
    <td>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/ConsoleArcs-UI_5.4.1f1_win.7z">Windows UI</a><br>
        <a href="https://github.com/07th-mod/patch-releases/releases/download/console-arcs-v1.0/ConsoleArcs-UI_5.4.1f1_unix.7z">Mac/Linux UI</a>
    </td>
    </tr>
    <tr class="odd">
    </tbody>
    </table>

    👀 Extract the `Patch` archive LAST, after all other files (should combine with the existing `HigurashiEp04_Data` folder). Overwrite any files if asked.

    🎮 On MacOS extract this file to where the `Contents` folder is located.

=== "Language Patches"


    --8<-- "third-party-features.md"

## Optional Steps After Install

### Console Arcs Only

To make the Console Arcs appear in Steam with the correct logos and name, please follow these instructions: [Console Arcs Steam Library Tutorial](steam-add-console-arcs/steam-add-console-arcs.md)