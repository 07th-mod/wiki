# Linux and Steam Deck FAQ

This page lists issues specific to Linux or Steam Deck

## Known Working/Broken Linux Configurations

[Click here to view the Higurashi Linux Configuration Spreadsheet](https://docs.google.com/spreadsheets/d/1QrM4Y3R53xuD-McSpaAtU7XMxeJlGrujSz1wadm26H0/edit?usp=sharing)

We informally keep a Linux configuration record, stating which configurations work, and which are known to have problems. This includes information like:

- which Higurashi chapter was tested
- whether the game was run natively, or was run under proton
- The operating system and operating system version
- a list of problems if the game did not run correctly

However please take it with a grain of salt, as some reports may be in error or unrelated to the configuration.

## Steam Deck

### Steam Deck - No Audio at all

Steam Deck has a way to mute specific apps, as discussed in this reddit post ["No Sound Fix"](https://www.reddit.com/r/SteamDeck/comments/thy8c9/no_sound_fix/)

> tldr: Games can be accidentally muted. Starting the game again in desktop mode then going to the applications tab in audio settings allows you to unmute it.
>
> ...fixed it by opening the game in desktop mode, going to audio settings (click the speaker icon in the taskbar), opening the applications tab and unmuting it there.

If you're still having problems, check the ["There is no sound/audio/BGM/voices"](FAQ.md#there-is-no-soundaudiobgmvoices) in the General FAQ, as you may have some other issue.

## General Linux Issues

### Game crashes on startup with "fatal stalled cross-thread pipe" error at start of game log

- If you get a `src/common/pipes.cpp (852) : fatal stalled cross-thread pipe` error at the top of your game log, it appears to be an issue with the game communicating with Steam
- To fix this:
    - Try restarting Steam and launching the game again
    - Try playing the game without Steam (close steam, then click on the executable directly)

### Whole game / system freezes when you move the mouse cursor with awesomewm desktop manager (and possibly others)

- This issue was reported with the awesomewm desktop manager
- This issue affected other games than just Higurashi
- To fix this issue:
  1. Disable your compositor
  2. Run your desktop manager with the `--no-argb` flag ([More info here, but not quite the same issue](https://github.com/awesomeWM/awesome/issues/2502)).

### GNOME/MATE Desktop - whole desktop crashes when game launched

**NOTE 2022-11-13: We have added a workaround in our mod to fix this issue. Let us know if you still have this problem on the latest version of the mod.**

Expand the below red box for more information.

--8<-- "gnome-crash-warning.md"
