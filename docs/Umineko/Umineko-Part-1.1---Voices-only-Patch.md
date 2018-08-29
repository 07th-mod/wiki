So, you like the Ryukishi art. I get it, I also like it a lot. In that case, we got you covered.

Beware that some bugs and features might be missing in these patches, and we offer absolutely no support for it. You're on your own!

|        Chapter        |                                                                                             Patch<br>(Right-Click Save As...)                                                                                           |                                              Voices                                              |                                                                                                                                Executable                                                                                                                                |
|:---------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Question Arcs  Ch.1~4 |                                        [Download](https://github.com/07th-mod/umineko-question/raw/voice_only/InDevelopment/ManualUpdates/0.utf)                                        |   [Download](https://07th-mod.com/Beato/Umineko-Voices.7z)   | [Windows](https://07th-mod.com/Beato-voice/Umineko1to4.exe) <br> [Mac](https://07th-mod.com/Beato-voice/Umineko1to4.app.zip) <br> [Linux](https://07th-mod.com/Beato-voice/Umineko1to4)  |
|   Answer Arcs Ch.5~8  | [Download](https://github.com/07th-mod/umineko-answer/raw/master/voices-only/0.utf) <br> [Update 1](https://07th-mod.com/Bern/UminekoChiruVO-Update1.zip) | [Download](https://07th-mod.com/Bern/UminekoChiru-Voices.7z) |  [Windows](https://07th-mod.com/Bern-voice/Umineko5to8.exe) <br> [Mac](https://07th-mod.com/Bern-voice/Umineko5to8.app.zip) <br> [Linux](https://07th-mod.com/Bern-voice/Umineko5to8) |

## Regarding Saves (Please Read)

Saves are NOT compatible between the stock game and the patched game. Saves between different versions of the patched game may or may not be compatible - they might skip you forwards / backwards in the script. For this reason, if you are 'updating' your script, you should do so after completing an episode. You could also load a very old save to determine if there is any offset in the script, but please be careful not to spoiler yourself by loading an incompatible save. 

I will attempt to make saves compatible for script files from Feb 24, 2018 onwards, but I can't guarantee it.

## Installing the patch

1. Find and open your game folder (open your Steam library, choose the game from the list, right click on it and click on ``Properties``. Switch to the ``LOCAL FILES`` tab and click on ``Browse local files...``)
2. Rename the file ``0.utf`` to ``0_old.utf``
3. Put the ``0.utf`` file you downloaded inside the folder. Rename it to ``0.u`` (yes, ``.u`` instead of ``.utf``)
4. Extract the Umineko Voices zip inside the directory. You should now have a folder called ``voice`` inside the root directory of the game
5. Download the executable for your system of choice (Windows, Mac of Linux). Put it inside the game folder and overwrite the file. Mac users need to **extract** the zip file inside the game folder.
6. **Answer Arcs only:** Extract the file ``UminekoChiruVO-Update1.zip`` the game folder. Overwrite if asked.

## Lost your saves? Fix here.

Rename your folder ``saves`` to ``mysav``, this should restore your progress when using the new executable.

## Customizing your install

You can easily tweak the volume of the voices and music/sfx by changing some parameters in the 0.utf script.  Search for these parameters in the script and change them to an integer between 0 and 100.
* musicVol - controls the music and sound effects volume (used to be called volX)
* voicevol - controls the voice volume

## Troubleshooting

See the general [Troubleshooting](https://07th-mod/wiki/Umineko-Part-1---Voice-and-Graphics-Patch#troubleshooting) section on the 'full patch instructions' page.