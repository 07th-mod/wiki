??? bug "[FIXED 2022-11-13] Linux Users: Windowed Mode causes Game/Desktop Crash with GNOME/MATE"

    **NOTE 2022-11-13: We have added a workaround in our mod to fix this issue. Let us know if you still have this problem on the latest version of the mod.**

    ----

    #### Triggering the bug

    This bug is triggered when:

    - you transition from fullscreen to windowed mode
    - the game launches in windowed mode
    - you drag the window around

    If the game is always in fullscreen mode, the bug will never be triggered.

    The bug only seems to affect chapters 3-6, although theoretically it could trigger on chapters 1 and 2. It occurs even on the unmodded game.

    The bug does not affect all desktop environments, however GNOME desktop is known to be affected.

    #### Symptoms of the bug

    When the bug is triggered, the game window will become extremely large or small, and the screen will be colored a black or blue color.

    After this happens, the game may freeze, crash, or sometimes your whole desktop environment will crash.

    #### Cause of the bug

    This bug is due to Unity versions ≤ `5.5.3p3` having a broken window resize function that sends uninitialized stack data to `XSetWMNormalHints`.

    See the following links for more details:

    - [Merged PR: Fix Unity killing window managers with insane window size](https://github.com/07th-mod/higurashi-assembly/pull/93)
    - [Draft PR: Linux gnome crash workaround](https://github.com/07th-mod/higurashi-assembly/pull/91)
    - [Issue: Linux GNOME desktop environment crash / corrupted configuration file issue](https://github.com/07th-mod/higurashi-patch-compiler/issues/58)

