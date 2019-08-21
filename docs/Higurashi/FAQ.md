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

## Misc Questions

### Are there voices only patches (without the PS3 graphics)?

Yes, there are but they can be unofficial (Onikakushi), severely outdated (Watanagashi) and no longer supported (all chapters) so don't open any issues about voices only patches. Please understand that many features such as improved translation and PS3 exclusive lines are **not** available in these patches. The definitive version of the game is the voices and graphics patch. You can find the voice only patches on [this page](https://07th-mod.com/wiki/Higurashi/Higurashi-Part-1.1---Voices-only-Patch/).
