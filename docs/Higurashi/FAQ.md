# Higurashi FAQ

Welcome to the Higurashi FAQ. You may wish to look at the Table of Contents at the top right of the screen to find your question.

## Gameplay Problems

### The game crashes

Very often people download the newest voice patch and forget to update their graphics patch. When you leave the graphics patch outdated, the game will crash when the script tries to output a file that doesn't exist.
E.g.: the game tries to show you an image that doesn't exist in your ``CG`` folder.

### The game is updated but some voices are not playing/some graphics are not showing!

When this happens, the very first thing you need to do is to clean your ``CompiledUpdateScripts`` folder. Make sure your game is updated and the folder is empty, then run the game again. It should hang for a few seconds before playing the intro.
Always make sure to do these steps after updating your patch!

### The game lags during voice playback

#### Possible Fixes

- If you're using Hamachi, disable it
- Disable any secondary network adapters
- Install the game on an SSD instead of a HDD

#### Reasoning for fixes

There is a known problem where having multiple network adapters can interfere with Unity's resource loading in the Higurashi games. See this issue for more details: [Unity may try to access the wrong network adapter](https://answers.unity.com/questions/623448/www-class-for-loading-local-texture-is-very-slow.html). It may also be possible other networking problems could cause lag.

A fragmented/very full HDD may be slow to load the assets - hence we recommend installing on an SSD.

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

## I have some other problem!

Please proceed to the [Higurashi Support](support.md) page