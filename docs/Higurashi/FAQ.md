# Higurashi FAQ

Welcome to the Higurashi FAQ. You can find your question using the **instant search bar** at the top of the screen, or the **Table of Contents** on the right.

## What if my issue is not listed below?

Please proceed to the [Higurashi Support](support.md) page

## Common Questions

### What do the Voice Matching Level and other mod settings do?

Please see the [Shortcuts and Settings Page](Higurashi-Part-2---Patch-configuration-and-keyboard-shortcuts.md) for details on each keyboard shortcut and mod setting.

## Known Issues

### The game lags during voice playback

#### Possible Fixes

- If you're using Hamachi, disable it
- Disable any secondary network adapters
- Install the game on an SSD instead of a HDD

#### Reasoning for fixes

There is a known problem where having multiple network adapters can interfere with Unity's resource loading in the Higurashi games. See this issue for more details: [Unity may try to access the wrong network adapter](https://answers.unity.com/questions/623448/www-class-for-loading-local-texture-is-very-slow.html). It may also be possible other networking problems could cause lag.

As for the HDD issue - a fragmented or very full HDD may be slow to load the assets - hence we recommend installing on an SSD.

### Two of the same character's sprites appear on the screen (overlapping / duplicate sprite)

We haven't been able to 'properly' fix this bug yet, but you can apply this workaround:

- Save your game
- Restart the game
- Load your save

After applying this workaround, you may need to play the game a little before the sprite fully disappears.

We would be thankful if you could send us your saves when you have this issue so we can fix it.

### The game freezes on a white screen on startup

The first time you start the game, it is normal to 'freeze' on a white screen for up to 2 minutes, but:

- If it takes more than 2 minutes (please wait at least 10 minutes), most likely the scripts have failed to compile. **Please message us [on our Discord](https://discord.gg/pf5VhF9) and we can send you the pre-compiled scripts to fix this issue**. If we get enough reports of this issue, we'll distribute the pre-compiled scripts with each release.

- If the game freezes on a black screen it's likely something went wrong - please contact us if this happens.

### Save Compatability / My saves don't work after updating

Saves between different releases of our mod are not compatible.

If you have made old saves, do not press 'continue' or load - please use the chapter jump menu or start a new game. You could get many kinds of wierd behaviour, for example being stuck on a black screen, or the game may crash.

If you want to use the saves on multiple machines (for example, using steam sync), make sure they are all running exactly the same version of the mod.

Global save data (like what you've unlocked so far) *should* be compatible between not only different releases of our mod, but also the unmodded game.

For details on save file locations, see "Save file locations" near the bottom of this page.

### There is no sound/audio/BGM/voices

When debugging this issue, it's worth testing and reporting these things

1. Check the in-game settings to see if the Voice, Music, or Sound Effects volume have been set to zero
2. The following software (related to audio devices) may interfere with the voice/audio playback of the game. Please try disabling any software or devices of this type:
    - Razer Synapse
    - Logitech G Hub
    - Asus Sonic Studio 3
    - HyperX Software/Headsets
    - General Bluetooth headset software
3. Check if other chapters of the game have this issue, or it's just this chapter
4. Check if restarting your computer fixes the issue
5. Try another audio device (for example, your speakers instead of USB/Bluetooth headphones)

See the below for more help on specific cases

#### No voices, but other sounds OK

Firstly, please make sure you have played past the opening section of the game. Narration is not voiced, so you have to wait until a character has spoken dialog before any voices will play ("They might talk like this!").

If voices are still not playing, press the **F10** button twice while not in a game menu to open the mod menu. Check if the BGM/voice volume is set to zero, and adjust it accordingly.

#### Only sound at intro

We have had one user who had sound only during the intro. Their issue was fixed by clearing the registry files for that chapter - but please only do this as a last resort. See "Registry file location and clearing" at the bottom of this page for how to do this.

#### No sound at all

Windows has a feature which lets you set volumes for individual apps, which could cause the game to be muted.

- Right click on the sound icon on the bottom right of your taskbar
- Click "Open Sound settings"
- Scroll down to "Advanced sound options"
- Click on "App volume and device preferences"
- Check if the game is muted (open the game now if it's not already open)

### Linux users with GNOME/MATE Desktop - whole desktop crashes when game launched

GNOME/MATE Desktop (the default on Ubuntu and Fedora Linux) will cause Higurashi Ep.4 and upwards to crash the entire desktop when you start the game. This happens even on the base game (without any mods applied).

A workaround for this is to install XFCE desktop (please look up instructions for your specific operating system).

Please make sure you can launch the base game before applying any mods (please don't make any saves on the base game as they are not compatible with the mod).

### Less likely errors

- Some Windows 10 users with Nvidia graphics cards reported a `IndexOutOfRangeException: Array index is out of range.
at UnityEngine.Display.RecreateDisplayList (System.IntPtr[] nativeDisplay) [0x00000] in <filename unknown>:0` error. This issue can affect all Unity games, not just Higurashi. See the second reply on [this steam forum post](https://steamcommunity.com/discussions/forum/1/1480982971174752598/) for details on how to fix this issue in Nvidia Control Panel.

## Known Issues - Manual Install

### The game crashes

Very often people download the newest voice patch and forget to update their graphics patch. When you leave the graphics patch outdated, the game will crash when the script tries to output a file that doesn't exist.
E.g.: the game tries to show you an image that doesn't exist in your ``CG`` folder.

We recommend using the installer's automatic update functionality to avoid this issue.

### The game is updated but some voices are not playing/some graphics are not showing!

When this happens, the very first thing you need to do is to clean your ``CompiledUpdateScripts`` folder. Make sure your game is updated and the folder is empty, then run the game again. It should hang for a few seconds before playing the intro.
Always make sure to do these steps after updating your patch!

## Higurashi Music and Sound Effects Changes / April Update

### What was the April update?

The April Higurashi update changed the Background Music (BGM) and sound effects. The changes made were:

- Some BGM/SE were replaced with completely different or new BGM/SE
- Some BGM/SE are modified or re-recorded versions of the same BGM/SE
- Some BGM had their audio clipping and distortion fixed - but at the same time different sounding instruments or samples may have been used in the new version.
- The game script was modified in some places to play different songs. Since the mod uses it's own script, we are unaffected by this.

More details can be seen below:

- Music Changes: See the [“Higurashi Music Changes” spreadsheet](https://docs.google.com/spreadsheets/d/1c4Ou9ssNuTAsxJozD0nnc-fzfaIwAdk30F2JhhQGmw4/edit?usp=sharing)
- Sound Effects Changes: (there is currently no list of sound effects changes)

### What options does the mod provide to fix this issue?

The mod installer provides a “BGM Fix” and “SE Fix” option. The approach taken to fix each BGM or Sound Effect is as follows:

- If the BGM or Sound Effect was replaced with an entirely different one, we have reverted it back to the original
- If the BGM or Sound Effect is roughly the same, we use the new version. On some tracks, this fixes clipping/distortion previously present (such as fixing the heavy clipping on msys28, “Lie Lies Lies Lie”)

In the future, we might offer a “full reversion” patch which will revert every file to before the April update, but currently this is not available.

## Misc Questions

### Are there voices only patches (without the PS3 graphics)?

Yes, there are but they can be unofficial (Onikakushi), severely outdated (Watanagashi) and no longer supported (all chapters) so don't open any issues about voices only patches. Please understand that many features such as improved translation and PS3 exclusive lines are **not** available in these patches. The definitive version of the game is the voices and graphics patch. You can find the voice only patches on [this page](https://07th-mod.com/wiki/Higurashi/Higurashi-Part-1.1---Voices-only-Patch/).

### What is the “OST Remake” Option?

This OST remake effort was started before the April patch. It contains handmade remakes of several music tracks from the original release (pre-2019) - [Click here to listen to audio samples](https://radiataalice.bandcamp.com/album/hinamizawa-syndrome-vol-1)
This patch was created as more of a side-project to see how the midis in the original 1999 soundtrack could be improved upon with modern instruments, and also to fix clipping and distortion issues in the original Steam release.

## Save file locations

Here are the save files locations for Higurashi, Chapter 1 (other chapters use the same pattern):

- Windows: `C:\Users\[YOUR_USERNAME]\AppData\Roaming\MangaGamer\higurashi01`
    - As a shortcut, paste this into the explorer address bar: `%AppData%/Mangagamer`
- MacOS: `~/Library/Application Support/unity.MangaGamer.Higurashi When They Cry - Ch.1 Onikakushi/`
- Linux: `~/.config/unity3d/Mangagamer/Higurashi When They Cry _ Ch_1 Onikakushi`

In the folder you'll find:

- one `global.dat` which holds information not specific to a save file (note that some info is stored in the registry - see below)
- manual save files like `save000.dat`
- quicksaves like `qsave0.dat`
- the screenshots associated with each save file like `save000.png` and `qsave0.png`

To clear your save data, make a backup of these files, **disable steam sync**, then delete all of them. **Steam will sync the saves in these folders**, so make sure to disable steam sync temporarily if you want to clear out or modify your saves, otherwise they will just reappear/get overwritten by Steam.

Also see "Registry file location and clearing" below.

## Registry file location and clearing (Windows Only)

See [Uninstalling registry entries](Uninstall.md#uninstalling-registry-entries-advanced-windows-only)
