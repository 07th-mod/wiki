I will try to list some configurations of the game and how to enable them here. If something seems missing, you can raise an issue on the [Umineko Question](https://github.com/07th-mod/umineko-question/issues) or [Umineko Answer](https://github.com/07th-mod/umineko-answer/issues) repository (not *this* repo!).

The two games have been **patched using different methods**, so **don't expect the Question and Answer arcs to behave the same!**.

#### How to replace scripts

Some instructions tell you to "replace the script". This involves downloading the script file (called `0.utf`), then replacing the script in your game folder (called `0.u`). **Remember to rename the downloaded 0.utf to 0.u, otherwise it won't work!** Also, make sure you didn't download a .html file by mistake - to download, try right clicking the link and save as, instead of just clicking on the link.

### Question Arc Modes:
- [Full patch (sprites, graphics, voices)](https://github.com/07th-mod/guide/wiki/Umineko-Part-1---Voice-and-Graphics-Patch) - tries to be as similar to the PS3 release as possible. 
    - Full patch with "Old Old" ryushiki sprites - To use this mode, install the full patch. Start a new game. Once you can open the right click menu, click "system", then click the "To Orig." button on the top left hand corner.
    - Full patch with Pachinko/Steam/MangaGamer sprites - To use this mode, install the full patch. Then, rename the 'tati' folder (located at `Umineko\big\bmp\tati`) to 'tati_old' (or you can just delete it). Since the game can't find the PS3 sprites, it will revert to 'default' pachinko sprites

- [Voice only patch](https://github.com/07th-mod/guide/wiki/Umineko-Part-1.1---Voices-only-Patch) - patches only the voices and nothing else

- ~~ADV Mode~~ - Adv mode is not available for Question Arcs (we haven't done it yet. No ETA :( )

- Japanese Language: A community member made a Japanese language script, you can download it at [this comment](https://github.com/07th-mod/umineko-question/issues/54#issuecomment-354034500). However it isn't being updated anymore, there may be some bugs. To use the script file, install the Question Arcs patch using the automatic installer, and verify you can play the game in English. Then, replace the `0.u` file with the script you downloaded. Note that the title logo will not be rendered correctly with this script file.

### Answer Arc Modes:
- [Full patch (sprites, graphics, voices)](https://github.com/07th-mod/guide/wiki/Umineko-Part-1---Voice-and-Graphics-Patch) - tries to be as similar to the PS3 release as possible. 
    - Full patch with Ryushiki sprites or Pachinko Sprites - To use this mode, you need replace your script with this one: [RIGHT CLICK here and SAVE AS](https://github.com/07th-mod/umineko-answer/raw/old_sprites/0.utf). Once you have replaced your game script, use the "To Orig." button in the top left of the right click menu if you want the "Old Old" ryushiki sprites". Note that this mode hasn't been well tested.

- [Voice only patch](https://github.com/07th-mod/guide/wiki/Umineko-Part-1.1---Voices-only-Patch) - patches only the voices and nothing else

- ADV Mode - The game normally displays in "NoVeL/NVL" mode - that is the text covers the entire screen, and the screen is darkened. In "ADVenture/Textbox/Dating Sim" mode, like most modern visual novels, the text displays in a small box at the bottom of the screen, and the screen is not darkened. [Click here for install instructions](https://github.com/07th-mod/guide/wiki/Umineko-Part-1---Voice-and-Graphics-Patch#adv-mode-chiruanswer-arcs-only)

- ~~Japanese Language~~: You can try to click the "switch language" button, but the voices won't play/will play at the wrong time. Theoretically it shouldn't be _that_ hard to fix - if you're familiar with processing text via programming then contact us. But I'm not sure there is much demand for this option.

