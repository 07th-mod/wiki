!!! danger "This page is for manual install only. We highly recommend using the automated installer as installing manually can be error prone. Please see the [Cross Platform Installer](Umineko-Part-3a-Cross-Platform-Installer.md), and follow the instructions"

--8<-- "umineko-project-recommendation.md"

--8<-- "umineko-saves-warning.md"

----

## Manual installation (Windows/Linux/Mac)

Manual installation is not recommended unless you have problems with the cross-platform installer. However, if you can't get the automatic installer to work, you can follow the below instructions to install the game manually.

#### MAC USERS ONLY - Various Gotchas
- When overwriting one folder with another on Mac, it by default **entirely replaces** the folder rather than merging. To fix this see the instructions for "Merge two folders with the same name" here: https://support.apple.com/kb/PH25633?locale=en_US
- MacOSX has some security features which can prevent the game running correctly. Please follow the install instructions closely so this doesn't happen.

### Answer Arc ADV Addon
Instructions on installing the Answer Arcs ADV Addon are at the bottom of the page.

## Download Links

> **Don't skip any links!** We can only guarantee the patch will work if you download all the parts of the chapter you want to play.

### Question Arcs

- **For the Question Arcs only, you can switch to ADV mode in-game**
- **If you want to play in Japanese, you MUST select the "Experimental" script**

<table>
<thead>
<tr class="header">
<th>Script</th>
<th>Base Assets</th>
<th>Movie (Linux Only)</th>
<th>Executable (Optional)</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td>
    <a href="https://github.com/07th-mod/umineko-question/releases/latest/download/script-full.7z">-Stable 0.u</a><br>
    or<br>
    <a href="https://github.com/07th-mod/umineko-question/raw/fix_clickwait_test_rebase/InDevelopment/ManualUpdates/0.utf?filename=0.u">-Experimental<br>(Right-click, Save-As<br>then rename as 0.u)</a>
</td>
<td>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/umineko-question-base-full.7z.001">Base Assets Part 1/3</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/umineko-question-base-full.7z.002">Base Assets Part 2/3</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/umineko-question-base-full.7z.003">Base Assets Part 3/3</a>
</td>
<td>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/Umineko-Update-1080p-v3_2019_01_03_MAC_LINUX.7z">Linux/MacOS Movie</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/umineko-question-full-exe.7z">Executable (For Repair)</a> <br>
</td>
</tr>
</tbody>
</table>


### Answer Arcs (NVL Mode)

- **For the Answer Arcs, you CANNOT switch to ADV mode in-game. You must decide now and install the correct files, see "ADV Mode Addon" at bottom of page**
- **If you want to play in Japanese, you MUST select the "Experimental" script**

<table>
<thead>
<tr class="header">
<th>Script</th>
<th>Base Assets</th>
<th>Executable</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>
    <a href="https://github.com/07th-mod/umineko-answer/releases/latest/download/script-full.7z">-Stable 0.u</a><br>
    or<br>
    <a href="https://github.com/07th-mod/umineko-answer/raw/master_no_clickwait_fix/0.utf" download>-Experimental<br>(Right-click, Save-As<br>then rename as 0.u)</a>
</td>
<td>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/umineko-answer-base-nvl.7z.001">Base Assets Part 1/4</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/umineko-answer-base-nvl.7z.002">Base Assets Part 2/4</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/umineko-answer-base-nvl.7z.003">Base Assets Part 3/4</a><br>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/umineko-answer-base-nvl.7z.004">Base Assets Part 4/4</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/umineko-answer-nvl-exe.7z">Executable (For Repair)</a> <br>
</tr>
</tbody>
</table>


### Answer Arcs (ADV Mode)

**See "Answer Arc ADV Addon" near bottom of page** for Answer Arcs ADV Mode instructions and downloads!


### Pachinko/Ryukishi Sprite Packs

Extract these packs to the root of the game directory, AFTER applying all other archives (extracting should overwrite many files).

- [Pachinko Question Arcs Sprites Pack](https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/Umineko-Upscaled-Pachinko.7z)
- [Pachinko Answer Arcs NVL/ADV Sprites Pack](https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/UminekoChiru-Upscaled-Pachinko.7z)

- [Ryukishi (Potato) Question Arcs Sprites Pack](https://github.com/07th-mod/patch-releases/releases/download/umineko-question-v1.0/Umineko-Upscaled-Potato-v3.7z)
- [Ryukishi (Potato) Answer Arcs NVL/ADV Sprites Pack](https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/UminekoChiru-Upscaled-Potato-v4.7z)

### How to install the patch manually 

Common steps are the same for all platforms. The remaining steps are **different** - please be aware of this!

**WARNING**: Make sure you extract any archives directly, without creating a subfolder! If your extraction tool has created an extra subfolder (probably with the same name as the archive), please manually move the files out of the subfolder and into the root game directory, **otherwise the game won't be able to detect the files!**  

#### Common Steps (Windows, Linux, and Mac)

1. Download and extract these archives to the game folder:

     - The Base Assets (`base`) archive
     - For Linux or Mac users on the Question Arcs, the "movie" archive

2. When you extracted the voice archive, it should have generated an `arc4.nsa` and `arc5.nsa` file. After that, **please check your arc.nsa files are sequential**:

    - If you have 5 `.nsa` files [`arc1.nsa`, `arc2.nsa`, `arc3.nsa`, `arc4.nsa`, `arc5.nsa`]
        - No extra steps are required
    - If you have 3 `.nsa` files [`arc.nsa`, `arc4.nsa`, `arc5.nsa`]
        - Rename `arc4.nsa` -> `arc1.nsa`
        - Rename `arc5.nsa` -> `arc2.nsa`
    - If you have 2 `.nsa` files [`arc4.nsa`, `arc5.nsa`]
        - Rename `arc4.nsa` -> `arc.nsa`
        - Rename `arc5.nsa` -> `arc1.nsa`

4. Rename the file ``0.utf`` inside your Umineko folder to ``0_old.utf`` (Backup the original script)

5. Put the patched ``0.u`` file inside the game folder
    - **If you have a ``0.utf`` file, rename it as ``0.u`` before putting it in the game folder!!**

6.  **SEE STEPS BELOW SPECIFIC TO YOUR PLATFORM!**

### Windows

7 . No extra steps required

### Linux

7 . You might have to set the .exe (`Umineko1to4` or `Umineko5to8`) to have executable permissions so you can run it.

### Mac

7 . MacOS users might need to apply the "Executable" manually. If the game does not run properlty, download and extract the "Executable" archive to a temporary folder, then read the below.

8 . **IMPORTANT**: MacOSX will try to prevent you from extracting the new, patched `.app` into the game folder! To get around this, you must extract it **outside the game folder** (preferably to your desktop or another personal folder). After you have extracted the .app file, you can then copy it to the root of the game folder (where the old one used to be). The app folders are called  ``Umineko1to4.app`` for the **Question Arcs** and ``Umineko5to8.app`` for the **Answer Arcs**. 

9 . If you fail to do step 8 this correctly, you will get this error:

> Missing Game Data
>
>Error (07th mod): The script file '0.utf' is missing from the game directory. https://discord.gg/acSbBtD.

Try step 8 again if you get this error.

### Repairing the patch

If you think your previously modded executable was overwritten by Steam (due to an Update or similar), try the following:

- Download and extract the "script" file/archive
- Download adn extract the "executable" archive

If the mod is still not repaired or not behaving correctly, try repeating a normal install.

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

- **Japanese is NOT SUPPORTED for the ADV Addon!**

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
<td>
    <a href="https://github.com/07th-mod/umineko-answer/releases/latest/download/script-adv-mode.7z">-Stable 0.u</a><br>
    or<br>
    <a href="https://github.com/07th-mod/umineko-answer/raw/adv_mode_no_clickwait_fix/0.utf" download>-Experimental<br>(Right-click, Save-As<br>then rename as 0.u)</a><br>
</td>
<td><a href="https://github.com/07th-mod/patch-releases/releases/download/umineko-answer-v1.0/UminekoChiru-ADV_Mode.7z">ADV Assets</a></td>
</tr>
</tbody>
</table>

This ADV Mode addon is only for the Answer arcs. For the Question arcs, the Full patch already contains ADV mode.

1. Ensure that you have a working release of the full graphics patch of the Chiru Answer Arcs (Scroll back up this page to install it).
2. Download the ADV mode **0.u Script** listed above and **replace** the existing 0.u file
3. Download and Unzip the **ADV Assets** archive listed above into the game folder (Check that it creates the following folders: `fonts_adv`, `textbox`, `textbox_black`).

----

## Legacy Question Arcs download links

Normally, there is no reason to install the legacy version of the Question Arcs. However, if you are using a translation (for example, the Korean Translation), which was based on the old version of our mod, you must install this version so it is compatible.

Installation Instructions:

1. Extract the base archives below:
    - [Base Assets Part 1/3](https://github.com/07th-mod/patch-releases/releases/download/umineko-legacy-v1.0/umineko-legacy-1707x1280.7z.001)
    - [Base Assets Part 2/3](https://github.com/07th-mod/patch-releases/releases/download/umineko-legacy-v1.0/umineko-legacy-1707x1280.7z.002)
    - [Base Assets Part 3/3](https://github.com/07th-mod/patch-releases/releases/download/umineko-legacy-v1.0/umineko-legacy-1707x1280.7z.003)
2. **Ensure your your arc.nsa files are sequential**:
    - If you have 5 `.nsa` files [`arc1.nsa`, `arc2.nsa`, `arc3.nsa`, `arc4.nsa`, `arc5.nsa`]
        - No extra steps are required
    - If you have 3 `.nsa` files [`arc.nsa`, `arc4.nsa`, `arc5.nsa`]
        - Rename `arc4.nsa` -> `arc1.nsa`
        - Rename `arc5.nsa` -> `arc2.nsa`
    - If you have 2 `.nsa` files [`arc4.nsa`, `arc5.nsa`]
        - Rename `arc4.nsa` -> `arc.nsa`
        - Rename `arc5.nsa` -> `arc1.nsa`
3. Install the "script" file from your legacy translation (You should rename it as either `0.u` or `0.utf`, whichever one works).
    - NOTE: the game will NOT work without a "script" file installed.

