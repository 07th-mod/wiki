# BGM and SE Scripting

## General Overview

MangaGamer's Higurashi engine contains a number of audio features, which are described on this page:

- You can play one-off sounds (usually sound effects) using `PlaySE()`
- You can play looping sounds (usually repeating background music, or background sound effects likethe sound of rain) using `PlayBGM()`
- You can stop or fade out looping sounds using `FadeOutBGM()`
- You can choose between old and new BGM via our mod's audio options, called BGM/SE/Audio Presets
- Our mod has two additional extension functions `ModPlayBGM()` and `ModFadeOutBGM()` which will only execute if you have the corresponding BGM Preset selected.

This page describes how to play audio using these functions, and how to define BGM/SE/Audio Presets.

## **PlayBGM()** and **PlaySE()** functions

The basic `PlayBGM` and `PlaySE` have 4 arguments. These are used for starting looping playback (`PlayBGM`) and once-off playback (`PlaySE`) of sounds.

```C
PlayBGM(channel : int, filename : string, volume : int, fadeInTime : int)
PlaySE(channel : int, filename : string, volume : int, fadeInTime : int)
```

### `channel` argument

Channels are needed when you want to play more than one sound simultaneously.

For example, if you wanted to play the files "semi" and "suzume" at the same time:

```C
    PlayBGM( 1, "semi", 28, 0);
    PlayBGM( 2, "suzume", 56, 0);
```

The first argument of the PlayBGM call is the channel, so in the above, "semi" is on channel 1, and "suzume" is on channel 2.

If you accidentally use the same channel twice, it will stop the previous sound and play the new sound.

Please note that the engine has one set of channels for non-repeating sound effects (the `PlaySE` functions), and one set of channels for repeating sounds (the `PlayBGM` functions). This means you can play a one-off sound effect on channel 1 using `PlaySE`, and also play a looping BGM on channel 1 without them conflicting.

It is recommended you use the same set of channels as in the existing scripts to prevent problems - don't just choose a random channel.

### `filename` argument

!!! warning "ALWAYS USE LOWERCASE FILENAMES, both for the filename on disk and the `filename` argument to `PlayBGM`. Using mixed case can cause errors on Linux and MacOS systems which are case-sensitive."

This is the filename of the file to be played. Do not include the file extension!

**In the vanilla game engine**, the file should be located in the `HigurashiEp0X_Data\StreamingAssets\BGM` folder for the `PlayBGM` folder, or the `HigurashiEp0X_Data\StreamingAssets\SE` folder for the `PlaySE` function.

However, **in the modded game**, the folder depends on the user's chosen BGM option. Further more, the game will look in multiple folders for the file (if it can't find the file in one folder).

Note that this affects even the `PlayBGM` and `PlaySE` functions, not just the `ModPlayBGM` function!

For example, in Chapters 5-8, if the user has selected the `New BGM` option, the modded game will look in the folders `ExtraBGM` -> `BGM` in that order. But if the user has selected the `GIN's BGM` option, the modded game will look in `OGBGM` ->  `ExtraBGM` -> `BGM` in that order.

For a more detailed explanation, see the "BGM, SE, and Audio Presets" section below.

Also, you may want to read the [BGM/SE FAQ](https://07th-mod.com/wiki/Higurashi/BGM-SE-FAQ/) to understand why these options exist, and how they are used in-game.

### `volume` argument

According to the engine code, the volume is a value between 0 and 128, with 0 being the quietest, and 128 being the loudest.

However, in our scripts, we usually use a value of 56 as the 'normal' BGM/SE volume, presumably to prevent clipping if more than one sound is played at once.

### `fadeInTime` argument

This sets the audio fade in time in **milliseconds**. In most of our scripts we set it to `0` for `PlayBGM` functions. and `64` for `PlaySE` functions, which pretty much plays the audio immediately.

## **FadeOutBGM()** function

The `FadeOutBGM` function has 3 arguments. This function is used for fading out a sound previously started with `PlayBGM`.

```C
FadeOutBGM(channel : int, fadeOutTime : int, waitForFade : bool)
```

These arguments to these functions will be discussed below.

### `channel` argument

This determines which channel will be faded out - make sure to use the same channel you used in the previous `PlayBGM` or `ModPlayBGM` call earlier.

### `fadeOutTime` argument

This sets how long a fadeout will take, in **milliseconds**.

```C
    PlayBGM( 3, "semi_r", 56, 0); // Start playing "semi_r" on channel 3

    ... // Imagine some dialogue or sprites are displayed here

    // 1000ms / 1 second fade out on channel 3
    // This will fade out the previously played "semi_r"
    FadeOutBGM( 3, 1000, TRUE );
```

### `waitForFade` argument

When set to `TRUE`, the game will wait for the fade to finish before continuing executing the script.

When set to `FALSE`, the fade will happen in the background and the game will continue executing the script.

This is usually set to `FALSE` in our scripts - only set to `TRUE` if you want to make sure the BGM is completely faded out before moving on to the next script line.

```C
    FadeOutBGM( 0, 1000, FALSE ); // non-blocking fade out (use this!)
    FadeOutBGM( 1, 1000, TRUE );  // blocking fade out
```

## **ModPlayBGM()** and **ModFadeOutBGM()** functions

The mod-only `ModPlayBGM` and `ModFadeOutBGM` allow specifying which BGM/SE Preset they should execute on. This allows you to play BGM at different times, depending on your BGM/SE Preset.

```C
ModPlayBGM(channel, filename, volume, fadeInTime, targetBGMFlow: int)
ModFadeOutBGM(channel, fadeOutTime, waitForFade, targetBGMFlow: int)
```

### `targetBGMFlow` argument

The `ModPlayBGM` and `ModFadeOutBGM` functions have a `targetBGMFlow`argument which specifies which preset they are associated with, and only play if the associated preset is active.

To be exact, this is when the `targetBGMFlow` argument equals the current `GAltBGMFlow` value (a global game engine flag).

Each BGM preset has it's own `GAltBGMFlow` value, which is discussed in the later section - but for most of our scripts, you just need to know that the "New" BGM has a `GAltBGMFlow` value of 0, and the Old/GIN's BGM has a `GAltBGMFlow` value of 1.

This is confusing, so here is an example:

```C
    // The last argument is the targetBGMFlow argument!
    ModPlayBGM( 0, "semi_r", 56, 0, 0 ); // targetBGMFlow = 0 = new bgm
    ModPlayBGM( 0, "higurashi", 56, 0, 1 ); // targetBGMFlow = 1 = old bgm
```

In the above example, if you have the "new bgm" preset selected, your `GAltBGMFlow` will be equal to 0. The game will see that the first `ModPlayBGM`'s `targetBGMFlow` is also 0, so it will execute that line (it will play **semi_r**). It will skip over the next line, because its `targetBGMFlow` is 1 which does not match your `GAltBGMFlow` value of 0.

However, if you had the "Old/GIN's BGM", your `GAltBGMFlow` would be set to 1, and the game would then skip the first line, and execute the second line, playing the file **higurashi**.


## BGM, SE, and Audio Presets

#### Defining BGM Presets

To see what folders each option corresponds to, we can check the the `init.txt` file:

First, lets see how the BGM Presets are defined.

```C
// ---- In the `init.txt` file of Chapter 5 ----
// GAltBGM controls which of these are selected
ModAddBGMset("New BGM", "Placeholder", "ExtraBGM:BGM"); // BGM Preset 0
ModAddBGMset("GIN's BGM", "Placeholder", "OGBGM:ExtraBGM:BGM"); // BGM Preset 1
```

The first two arguments of the function are the English and Japanese names of the BGM Preset, just used for display purposes in-game. We currently haven't put a proper Japanese name in, so it just says "Placeholder".

The third argument is the folders to check, in order, to find the file (separated by `:`). In the above example, "GIN's BGM" would look through the `OGBGM` folder first. If the bgm is not found there, it would then look in the `ExtraBGM` folder. If the BGM is not there either, it would look in the `BGM` folder.

The order the BGM Presets are defined is important - our mod will number them with the first being BGM Preset `0`, the next being BGM Preset `1` and so on. I've marked them using comments in the above code snippet.


#### Defining SE Presets

The Sound Effect options/SE Sets are defined in a similar  way.

```C
// ---- In the `init.txt` file of Chapter 5 ----
// GAltSE controls which of these are selected
ModAddSEset("New SE", "Placeholder", "ExtraSE:SE"); // SE Preset 0
ModAddSEset("GIN's SE", "Placeholder", "OGSE:ExtraSE:SE"); // SE Preset 1
```
You can set these in the F10 menu under "Audio"->"Override SE".

#### Defining Audio Presets

The mod has "Audio Presets", which has the following arguments:

- The English name of the preset
- The English Description of the preset
- The Japanese name of the preset (currently not properly filled in)
- The Japanese Description fo the preset (currently not properly filled in)
- The index of the BGM Preset to use. For example, to choose the first BGM preset defined earlier, set this to 0.
- The value `GAltBGMFlow` should be set to when this preset is enabled. See the "`targetBGMFlow` argument" section on this page for details.
- The index of the SE Preset to use. For example, to choose the first SE preset defined earlier, set this to 0.
- The value `GAltSEFlow` should be set to when this preset is enabled. Currently I don't think this is used anywhere, but it still sets that flag in the game engine.

```C
    // ---- In the `init.txt` file of Chapter 5 ----
    // Audio presets the user can select,
    // consisting of a combination of the BGM and SE flags
    ModAddAudioset(
        "New BGM/SE",
        "Use the new Background Music (BGM) and Sound...",
        "JP: New BGM/SE",
        "JP: Use the new Background Music (BGM) and S...",
        0, // GAltBGM - 0 selects "New BGM"
        0, // GAltBGMFlow
        0, // GAltSE - 0 selects "New SE"
        0  // GAltSEFlow
    );

    ModAddAudioset(
        "GIN's BGM/SE",
        "This option uses GIN's Background Music...",
        "JP: GIN's BGM/SE",
        "JP: This option uses GIN's Background ...",
        1, // GAltBGM - 1 selects "GIN's BGM"
        1, // GAltBGMFlow
        1, // GAltSE - 1 selects "GIN's SE"
        1  // GAltSEFlow
    );
```

You can set these in the F10 menu under "Audio"->"Audio Presets". The game also prompts you to set these the first time you start the game.

All of the above may seem unnecessarily complicated, but it allows for some flexibility (perhaps more than we'll ever need) in defining the BGM and SE options.
