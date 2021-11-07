!!! warning "This page is for manual install only. To install automatically, please go back to the [introduction page](Umineko-Getting-started.md), and follow the instructions"

----

**Note:** There are install options for the full patch which overwrite the default PS3 sprites with Ryukishi (Original) or Pachinko sprites. If you want Ryukishi (Original) or Pachinko sprites with the new backgrounds, most likely you want the full patch ([Automatic Install](Umineko-Part-3a-Cross-Platform-Installer.md) / [Manual Install](Umineko-Part-1---Voice-and-Graphics-Patch.md)). Just make sure to select the right option in the installer, or manually install your choice of sprite pack.

We currently do not support the old background style with the full patch - to get old backgrounds you must use this voice-only patch.

----

The voice-only patch adds voices to the vanilla game, without making any graphical changes.

Please note that compared to the full patch, the voice-only patch may contain more bugs and be missing features.

#### Manual Install Instructions (not recommended)

Manually installing the game is not recommended unless you have problems with the automatic installer. 

#### MAC USERS ONLY - Various Gotchas
- When overwriting one folder with another on Mac, it by default **entirely replaces** the folder rather than merging. To fix this see the instructions for "Merge two folders with the same name" here: [https://support.apple.com/kb/PH25633?locale=en_US](https://support.apple.com/kb/PH25633?locale=en_US)
- MacOSX has some security features which can prevent the game running correctly. Please follow the install instructions closely so this doesn't happen.

<table>
<thead>
<tr class="header">
<th>Chapter</th>
<th>Script (0.utf)<br>(Right-Click Save As…)</th>
<th>Voices</th>
<th>Executable</th>
<th>Update</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Question Arcs<br>Ch.1~4</td>
<td><a href="https://07th-mod.com/download.php?repository=umineko-question&file=voice_only/InDevelopment/ManualUpdates/0.utf">Download 0.u</a></td>
<td><a href="https://07th-mod.com/Beato/Umineko-Voices-nsa.7z">Download</a></td>
<td><a href="https://07th-mod.com/Beato-voice/Umineko1to4.exe">Windows</a> <br> <a href="https://07th-mod.com/Beato-voice/Umineko1to4.app.zip">Mac</a> <br> <a href="https://07th-mod.com/Beato-voice/Umineko1to4">Linux</a></td>
<td></td>
</tr>
<tr class="even">
<td>Answer Arcs<br>Ch.5~8</td>
<td><a href="https://07th-mod.com/download.php?repository=umineko-answer&file=master/voices-only/0.utf">Download 0.u</a></td>
<td><a href="https://07th-mod.com/Bern/UminekoChiru-Voices-nsa.7z">Download</a></td>
<td><a href="https://07th-mod.com/Bern-voice/Umineko5to8.exe">Windows</a> <br> <a href="https://07th-mod.com/Bern-voice/Umineko5to8.app.zip">Mac</a> <br> <a href="https://07th-mod.com/Bern-voice/Umineko5to8">Linux</a></td>
<td><a href="https://07th-mod.com/Bern/UminekoChiruVO-Update1.zip">Update 1</a></td>
</tr>
</tbody>
</table>

**Linux and Mac Only**: [`linux-libpng-libjpeg.7z`](https://07th-mod.com/Beato/linux-libpng-libjpeg.7z)

## Installing the patch

1. Find and open your game folder (open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
2. Rename the file ``0.utf`` to ``0_old.utf`` (Backup the original script)
3. Download the ``0.u``, and place it inside the game folder. **MacOSX Only**: you might need to rename the `0.u` file to `0.utf`
4. Download and extract the Umineko Voices archive.
3. When you extracted the voice archive, it should have generated an `arc4.nsa` and `arc5.nsa` file. After that, **please check the following**:
    - If you already have `arc1.nsa`, `arc2.nsa`, `arc3.nsa`, `arc4.nsa`, and `arc5.nsa` in your folder, then you are done with this step.
    - If you **only** have `arc4.nsa` and `arc5.nsa`, you must rename them to `arc.nsa` and `arc1.nsa` (so the arc files are sequential)
6. This step differs depending on your operating system
    - **Windows, Linux**: Download the Windows/Linux executable, and overwrite the existing executable in the game folder 
    - **MacOSX**: Download the zip file, but extract it to a known good location like desktop/downloads/documents, OUTSIDE the game directory. This will give you a `.app` file. Only then, copy the `.app` file into the game directory. This is to avoid a MacOSX security feature which prevents the game from running correctly (will give you a 'script not found').  

7. **Answer Arcs only:** Extract the file ``UminekoChiruVO-Update1.zip`` the game folder. Overwrite if asked.
8. **Linux and Mac**: Extract the file `linux-libpng-libjpeg.7z` to the game folder. Overwrite if asked. Both arcs use the same archive.
