Written by [@enumag](https://github.com/enumag/).

# Main process

This section covers the main process of creating a patch for each new chapter.

## Step 1: Voices

1. [Run voice insertion script.](https://github.com/07th-mod/higurashi-dev-guides/wiki/Automated-voice-inserter)
2. Fix the rest manually (link).
3. Release a voices-only patch.

## Step 2: Graphics patch

It is recommended to have at least the automatic voice insertion completed first to avoid conflicts.

TODO: We need to make a new workflow for this based on our recent rework of the graphics patches.

## Step 3: ADV-mode

Steps 1 and 2 are required for this. The game should still run with vanilla DLL after this step.

Run ADV-mode update script (link).

TODO: First release should probably happen either after this step or after DLL updates.

## Step 4: DLL update

1. DLL hacking (link). Note: This can be started right away when a new chapter comes out. No need to wait for the previous steps to be completed.
2. Run update script. This requires all previous steps to be completed first.

## Step 5: Installer update

This step mainly involves updating the `installData.json` and `versionData.json`.

**NOTE:** When the installer is run, it automatically does various checks to make sure you've correctly filled in the `installedData.json` and `versionData.json`, and also re-generates the `cachedDownloadSizes.json`. For this reason, it is not recommended to edit the `installData.json` without running the installer afterwards to check (with `python main.py`).

1. In the `versionData.json`, make copy the previous chapter's information below it
2. Look through all values the values and update the chapter number to match the new chapter
3. Update the files to be downloaded for the patch
4. Update identifiers field for MacOS - [detailed explanation here](../installer/install-data-json.md#identifiers-field).
    1. Download the MacOS game from MangaGamer (download link #2). You can do this on any OS.
    2. Extract the game somewhere, producing a `.app` folder
    3. Open the file at `Contents\Info.plist`, an `xml` file
    4. Look for the `key` called `CFBundleExecutable`, then directly afterwards copy the `string`. For chapters 1-8 this was something like `HigurashiEp01`, but for Rei this was something like `Higurashi When They Cry Rei`
    5. Currently, you need to append `_Data` to the end of the identifier, to produce something like `HigurashiEp01_Data` or `Higurashi When They Cry Rei_Data`. However, this requirement may be removed in the future.
    6. Update the `identifiers` in `installData.json` with this new identifier.
        - This identifier is used by the installer to make sure the right game has been selected.
5. Update the `versionData.json` file, one per every file which has a `url`. For `files`, use the `name`, and for `fileOverrides` use the `id`
6. Run the installer to verify that everything was updated correctly.
    1. **NOTE:** This will also generate an updated `cachedDownloadSize.json` on the first run, which will take a long time (it will quickly get the download size of every file), please be patient.

# Other tasks

These tasks can generally be done at any time during the process.

## MG patch

The first 2 steps need to be completed first, then this can be done at any time and doesn't block anything.

(link)

## PS3 poems

TODO (Applies for question arcs only.)

## Moving backgrounds

TODO

## New UI

TODO

## New scenes and translations improvements

TODO

## Sui Soundtrack

TODO

## Patch installers

TODO

