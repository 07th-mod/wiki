!!! danger "This page is for manual install only. We highly recommend using the automated installer as installing manually can be error prone. Please see the [Cross Platform Installer](Umineko-Part-3a-Cross-Platform-Installer.md), and follow the instructions"

--8<-- "umineko-project-recommendation.md"

----

## Manual installation (Windows/Linux/Mac)

Manual installation is not recommended unless you have problems with the cross-platform installer. However, if you can't get the automatic installer to work, you can follow the below instructions to install the game manually.

#### MAC USERS ONLY - Various Gotchas
- When overwriting one folder with another on Mac, it by default **entirely replaces** the folder rather than merging. To fix this see the instructions for "Merge two folders with the same name" here: https://support.apple.com/kb/PH25633?locale=en_US
- MacOSX has some security features which can prevent the game running correctly. Please follow the install instructions closesly so this doesn't happen.

### Answer Arc ADV Addon
Instructions on installing the Answer Arcs ADV Addon are at the bottom of the page.

## Download Links

> **Don't skip any links!** We can only guarantee the patch will work if you download all the parts of the chapter you want to play.

<table>
<thead>
<tr class="header">
<th>Question Arcs</th>
<th>Script</th>
<th>Voices</th>
<th>Graphics</th>
<th>Executable</th>
<th>Updates (DL all)</th>
<th>Update (OS Specific)</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td>Question Arcs Full</td>
<td><a href="https://07th-mod.com/download.php?repository=umineko-question&file=master/InDevelopment/ManualUpdates/0.utf">Download 0.u</a></td>
<td><a href="https://07th-mod.com/Beato/Umineko-Voices-nsa.7z">Download</a></td>
<td><a href="https://07th-mod.com/Beato/1080p/Umineko-Graphics-1080p-v3.7z">1080p Graphics</a></td>
<td><a href="https://07th-mod.com/Beato/1080p/Umineko1to4.exe">Windows</a> <br> <a href="https://07th-mod.com/Beato/1080p/Umineko1to4.app.zip">Mac</a> <br> <a href="https://07th-mod.com/Beato/1080p/Umineko1to4">Linux</a></td>
<td>
<a href="https://07th-mod.com/Beato/1080p/Umineko-Update-1080p-Rolling-ALL-OS.7z">-1080p Rolling Update</a>
<br>
<a href="https://07th-mod.com/Bern/Umineko-ADV_Mode.7z">-ADV Files</a>
</td>
<td>
Choose <strong>one</strong>:
    <br> <a href="https://07th-mod.com/Beato/1080p/Umineko-Update-1080p-v3_2019_01_03_WINDOWS.7z">-WINDOWS</a>
    <br> <a href="https://07th-mod.com/Beato/1080p/Umineko-Update-1080p-v3_2019_01_03_MAC_LINUX.7z">-LINUX/MAC</a>
</td>
</tr>
</tbody>
</table>



<table>
<thead>
<tr class="header">
<th>Answer Arcs</th>
<th>Script</th>
<th>Voices</th>
<th>Graphics</th>
<th>Executable</th>
<th>Updates</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Answer Arcs (Ch.5~8)</td>
<td><a href="https://07th-mod.com/download.php?repository=umineko-answer&file=master/0.utf">Download 0.u</td>
<td><a href="https://07th-mod.com/Bern/UminekoChiru-Voices-nsa.7z">Download</a></td>
<td><a href="https://07th-mod.com/Bern/UminekoChiru-Graphics-v2.7z">Download</a></td>
<td><a href="https://07th-mod.com/Bern/Umineko5to8.exe">Windows</a> <br> <a href="https://07th-mod.com/Bern/Umineko5to8.app.zip">Mac</a> <br> <a href="https://07th-mod.com/Bern/Umineko5to8">Linux</a></td>
<td><a href="https://07th-mod.com/Bern/Umineko-Answer-Update-Full-Rolling-ALL-OS.7z">Rolling Update</a></td>
</tr>
<tr class="even">
<td>Answer Arcs ADV Mode Addon</td>
<td>See bottom of page</td>
<td></td>
<td></td>
<td></td>
<td>See bottom of page</td>
</tr>
</tbody>
</table>

**Linux and Mac Only**: [`linux-libpng-libjpeg.7z`](https://07th-mod.com/Beato/linux-libpng-libjpeg.7z)

### Pachinko/Ryukishi Sprite Packs

Extract these packs to the root of the game directory, AFTER applying all other archives (extracting should overwrite many files).

- [Pachinko Question Arcs Sprites Pack](https://07th-mod.com/Beato/Umineko-Upscaled-Pachinko.7z)
- [Pachinko Answer Arcs NVL/ADV Sprites Pack](https://07th-mod.com/Bern/UminekoChiru-Upscaled-Pachinko.7z)

- [Ryukishi (Potato) Question Arcs Sprites Pack](https://07th-mod.com/Beato/Umineko-Upscaled-Potato-v2.7z)
- [Ryukishi (Potato) Answer Arcs NVL/ADV Sprites Pack](https://07th-mod.com/Bern/UminekoChiru-Upscaled-Potato.7z)

### How to install the patch manually 

Common steps are the same for all platforms. The remaining steps are **different** - please be aware of this!

**WARNING**: Make sure you extract any archives directly, without creating a subfolder! If your extraction tool has created an extra subfolder (probably with the same name as the archive), please manually move the files out of the subfolder and into the root game directory, **otherwise the game won't be able to detect the files!**  

#### Common Steps (Windows, Linux, and Mac)

1. Download and extract these archives to the game folder:

     - The Voices archive
     - The Graphics archive

2. Then, download and extract these archives to the game folder, overwriting existing files:

    - For the Question arcs:
         - the OS Specific update (choose the correct one for your operating system)
         - the ADV files
         - the Rolling update
    - For the Answer arcs
         - the Rolling Update

3. When you extracted the voice archive, it should have generated an `arc4.nsa` and `arc5.nsa` file. After that, **please check the following**:

    - If you already have `arc1.nsa`, `arc2.nsa`, `arc3.nsa`, `arc4.nsa`, and `arc5.nsa` in your folder, then you are done with this step.
    - If you **only** have `arc4.nsa` and `arc5.nsa`, you must rename them to `arc.nsa` and `arc1.nsa` (so the arc files are sequential)

4. Rename the file ``0.utf`` inside your Umineko folder to ``0_old.utf`` (Backup the original script)

5. Put the patched ``0.u`` file inside the game folder.

6.  **SEE STEPS BELOW SPECIFIC TO YOUR PLATFORM!**

### Windows

7 . Backup the old .exe. For the **Question Arcs**, rename `Umineko1to4.exe` to `Umineko1to4_old.exe`. For the **Answer Arcs**, rename `Umineko5to8.exe` to `Umineko5to8_old.exe`.

8 . Install the new .exe (the one you downloaded from this page). For the **Question arcs**, put the patched `Umineko1to4.exe` in the game folder. For the **Answer Arcs**, put the patched `Umineko5to8.exe` inside the folder.


### Linux

7 . Backup the old .exe. For the **Question Arcs**, rename `Umineko1to4` to `Umineko1to4_old`. For the **Answer Arcs**, rename `Umineko5to8` to `Umineko5to8_old`.

8 . Install the new .exe (the one you downloaded from this page). For the **Question arcs**, put the patched `Umineko1to4` in the game folder. For the **Answer Arcs**, put the patched `Umineko5to8` inside the folder.

9 . You might have to set the .exe to have executable permissions so you can run it.

10 . Extract the archive `linux-libpng-libjpeg.7z` to the game folder. Overwrite if asked. Both arcs use the same archive.

### Mac

7 . Backup the old .exe. This is the file with a character image on it (.app file), but the `.app` part may be hidden. For the **Question Arcs**, rename `Umineko1to4.app` to `Umineko1to4_old.app`. For the **Answer Arcs**, rename `Umineko5to8.app` to `Umineko5to8_old.app`.

8 . **IMPORTANT**: MacOSX will try to prevent you from extracting the new, patched `.app` into the game folder! To get around this, you must extract it **outside the game folder** (preferably to your desktop or another personal folder). After you have extracted the .app file, you can then copy it to the root of the game folder (where the old one used to be). Extract  ``Umineko1to4.app.zip`` for the **Question Arcs** and ``Umineko5to8.app.zip`` for the **Answer Arcs**. 

9 . If you fail to do step 8 this correctly, you will get this error:

> Missing Game Data
>
>Error (07th mod): The script file '0.utf' is missing from the game directory. https://discord.gg/acSbBtD.

Try step 8 again if you get this error.

10 . Extract the archive `linux-libpng-libjpeg.7z` to the game folder. Overwrite if asked. Both arcs use the same archive.

----

## Verification

Your folder structure should be something like this after you are finished. If it doesn't, you probably extracted to a subfolder by accident - To fix this, move the files out of the subfolder and into the root directory.

For the Question arcs:

```
BGM
big     //important - graphics
bmp     //important - graphics
en      //important - graphics
fonts
ME
movie
(mysav) //generated when you run the game
SE
sys_se
```

For the Answer arcs:

```
bg      //important - backgrounds
cg      //important - special/cutscene images
BGM
big     //important - graphics
bmp     //important - graphics
en      //important - graphics
fonts
ME
movie
(mysav) //generated when you run the game
SE
sprites //important - character sprites
sys_se
```

### All Platforms - File Verification

Ensure that you have your `0.u` or `0.utf` (depending on your platform), and your patched `Umineko1to4.exe`, `Umineko1to4`, or `Umineko1to4.app` is present in the root of the game folder.

----

## Answer Arc ADV Addon

<table>
<thead>
<tr class="header">
<th></th>
<th>Script</th>
<th>Updates</th>
</tr>
</thead>
<tbody>
<tr>
<td>ADV Mode Addon</td>
<td><a href="https://07th-mod.com/download.php?repository=umineko-answer&file=adv_mode/0.utf">0.u Script</td>
<td><a href="https://07th-mod.com/Bern/UminekoChiru-ADV_Mode.7z">ADV Assets</a></td>
</tr>
</tbody>
</table>

This ADV Mode addon is only for the Answer arcs. For the Question arcs, the Full patch already contains ADV mode.

1. Ensure that you have a working release of the full graphics patch of the Chiru Answer Arcs (Scroll back up this page to install it).
2. Download the ADV mode **0.u Script** listed above and **replace** the existing 0.u file
3. Download and Unzip the **ADV Assets** archive listed above into the game folder (Check that it creates the following folders: `fonts_adv`, `textbox`, `textbox_black`).

## Legacy Question Arcs download links

Normally, there is no reason to install the legacy version of the Question Arcs. However, if you are using a translation (for example, the Korean Translation), which was based on the old version of our mod, you must install this version so it is compatible.

Installation Instructions:

1. Extract the graphics archive: [Legacy Question Arcs Graphics](https://07th-mod.com/Beato/legacy/Umineko-Graphics-Legacy-2018.7z)
2. Extract the voice archives which should generate a `arc4.nsa` and `arc5.nsa` file: [Normal Question Voices](https://07th-mod.com/Beato/Umineko-Voices-nsa.7z). Then **please check the following**:
    - If you already have `arc1.nsa`, `arc2.nsa`, `arc3.nsa`, `arc4.nsa`, and `arc5.nsa` in your folder, then you are done with this step.
    - If you **only** have `arc4.nsa` and `arc5.nsa`, you must rename them to `arc1.nsa` and `arc2.nsa` (so the arc files are sequential)
3. Extract the Exe: [Legacy Question Arcs Exe](https://07th-mod.com/Beato/legacy/Umineko-Question-Exes-legacy-1707x1280.7z)
4. Extract the Update: [Legacy Question Update](https://07th-mod.com/Beato/legacy/Umineko-Update-legacy-v5_2018_07_15.7z)
5. **Linux Mac Only** Extract the archive [`linux-libpng-libjpeg.7z`](https://07th-mod.com/Beato/linux-libpng-libjpeg.7z) to the game folder. Overwrite if asked. Both arcs use the same archive.
