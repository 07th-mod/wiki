## Known Issues

- You can navigate the menu with directional arrow keys on the Question arcs, but not on the Answer arcs. To fix this, you *can* copy the Umineko Question .exe into the Answer Arcs and run it instead, BUT this may silently break things in the Answer arcs - do so at your own risk.

## Install Problems

#### Steam updated and now my saves are missing! 

Rename your folder ``saves`` to ``mysav``, this should restore your progress when using the new executable.

#### My saves are all broken/shifted backwards/forwards in the game!

The following can cause your saves to break:

- Updating to a new script. If you need to update, finish a chapter first before updating the script.
- Transferring your game from Windows 7 to Windows 10 (Or between operating systems)
- Editing the script file, and adding/removing lines (editing existing lines is OK)
- Steam updates (see above FAQ)

The game does feature a 'subchapter select' menu for each chapter, allowing you to skip to a certain point in the chapter. However it is only unlocked once you complete the chapter, so is not useful unless you are replaying the game.

Note that your chapter unlock status should always be maintained, unless you delete your global save file.

#### 'No game script found' error when launching the game

You forgot to rename the script file `0.utf` to `0.u` (located in the root game directory)

#### I want to play with the original sprites/ryushi sprites/adv mode etc.

See the [Other Install Configurations](https://07th-mod.com/wiki/Umineko/Umineko-Part-2-Other-Install-Configurations) page.

#### Linux/MacOSX - Missing libpng.so libraries when launching game outside Steam

If you try to launch the Steam version of the game directly through the executable, the game will complain about missing libpng libraries and will show a black screen. You must launch the game directly through steam to avoid this error. 

#### Linux/MacOSX - I can't launch the game (No Execute Permissions)

You may need to do `chmod +x Umineko1to4` or `chmod +x Umineko5to8` to give execute permissions if your executable doesn't launch.

## Gameplay Problems

#### The game has poor performance, even on high end systems

We're currently investigating some reports of poor performance, especially on the Umineko Answer arcs.

Please note that the Umineko game engine heavily relies on single threaded CPU performance. This may mean that, even if you have a great GPU, an older CPU may cause you to lag or drop frames. On very underpowered machines (like netbooks with Atom processors, or old laptops), performance won't be very good - we recommend using a different machine to play if possible.

Having many programs running in the background can also affect performance, especially on low end systems. Please close other programs (including your browser) before running the game.

The game also seems to perform worse as your screen resolution increases (especially on integrated graphics). You can test this by playing in windowed mode, and reducing the window size - the performance should improve. If this is your problem, try reducing your desktop resolution to 1080p (the resolution the game runs at).

We have had a couple reports of high end systems having performance problems - we are currently investigating this issue.

#### Suddenly all my sound has stopped working!

In this game engine, pressing 'm' mutes all sound. Press 'm' again to unmute.

#### The voices at the start of the Question Arcs have some minor distortion

This seems to be inherent to the audio files of the PS3 game (either when they were recorded, or during mixdown). However the quality seems to improve as you progress through the game - it's mainly during the start of Episode 1 when it is noticeable.

#### Text advances too slowly/quickly

Press the 1 (slow), 2 (normal), or 3 (fast) keys while the game is not animating text to change the text speed. The full list of controls can be viewed by pressing the "Controls" button on the main menu.

#### Sometimes voices don't play

The game has some issues with playing back voice files, depending on the timing of when you click to advance (if you click just before a voice stops playing, it may cancel the next voice line being played). We don't really know of a solution to this problem, as it happens pretty randomly.

That said, if you find there is some spoken dialogue which **never plays a voice**, and seems like it should, please tell us so we can fix it up. Just make sure it's reproducible by playing through that line a couple times.

#### Steam Sync doesn't work!

Previously we had some issues with steam updating the game and loading 'patched' saves into the 'unpatched' script, which could potentially skip you forward in the game. To prevent this, we hid the save folder from Steam, as `mysav`. Unfortunately, this also breaks Steam Sync.

If you want to re-enable steam sync, you can do the following:
- rename the `saves` folder to `saves_old` (if it exists)
- double click `EnableSteamSync.bat` (if you don't have it, [download this and rename it as a .bat file](https://github.com/07th-mod/resources/raw/master/umineko-question/utilities/EnableSteamSync.bat))
- if successful, you should see a shortcut called `saves` appear in the game folder (might need to refresh the folder). If you double click it, you will see the contents of the `mysav` folder. This tricks steam into syncing the mysav folder.

Please note that even if you move the game folder, your save files will still go into `...\Steam\steamapps\common\Umineko\mysav`, no matter where you place the game folder.

#### How do I make the game launch in fullscreen automatically

Launch the game with the `--fullscreen` option. You can do this by creating a shortcut, then changing the 'Target' to `"path\to\game\Umineko1to4.exe" --fullscreen`

## I have some other problem!

If you have an issue with the game itself crashing or behaving very badly, please start the game in Debug mode by double clicking `Umineko5to8_DebugMode.bat` (if you don't have it, [download this and rename it as a .bat file](https://github.com/07th-mod/resources/raw/master/umineko-question/utilities/StartUminekoInDebugMode.bat)). Once you make game crash, submit the stdout.txt and stderr.txt text files to us. On Linux you can view errors by launching the game from a console window.

You can send them to us on our Discord server: 

- `#umi_support` @ [https://discord.gg/acSbBtD](https://discord.gg/acSbBtD). **Please do not post any spoilers there.**

You can also submit them on our Github Issues page:

- [Question Arcs Issues Page](https://github.com/07th-mod/umineko-question/issues)
- [Answer Arcs Issues Page](https://github.com/07th-mod/umineko-answer/issues)
