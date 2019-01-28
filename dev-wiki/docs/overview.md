Written by [@enumag](https://github.com/enumag/).

# Main process

This section covers the main process of creating a patch for each new chapter.

Step 1: Voices
----

1. [Run voice insertion script.](https://github.com/07th-mod/higurashi-dev-guides/wiki/Automated-voice-inserter)
2. Fix the rest manually (link).
3. Release a voices-only patch.

Step 2: Graphics patch
----

It is recommended to have at least the automatic voice insertion completed first to avoid conflicts.

TODO: We need to make a new workflow for this based on our recent rework of the graphics patches.

Step 3: ADV-mode
----

Steps 1 and 2 are required for this. The game should still run with vanilla DLL after this step.

Run ADV-mode update script (link).

TODO: First release should probably happen either after this step or after DLL updates.

Step 4: DLL update
----

1. DLL hacking (link). Note: This can be started right away when a new chapter comes out. No need to wait for the previous steps to be completed.
2. Run update script. This requires all previous steps to be completed first.

Step 5: LipSync
----

1. DLL hacking (link). This can be done together with Step 4 DLL hacking.
2. Run update script. This requires all previous steps to be completed first.

TODO: LipSync update script needs to be separated from new graphics patches update.

# Other tasks

These tasks can generally be done at any time during the process.

MG patch
----

The first 2 steps need to be completed first, then this can be done at any time and doesn't block anything.

(link)

PS3 poems
----

TODO (Applies for question arcs only.)

Moving backgrounds
----

TODO

New UI
----

TODO

New scenes and translations improvements
----

TODO

Sui Soundtrack
----

TODO

Patch installers
----

TODO
