# Uninstalling Higurashi and the Mod

If you want to fully remove Higurashi (for a reinstall, or if you're finished with the game), follow these instructions. Note that **a normal Steam uninstall will not remove the mod files**, so you must follow these instructions to remove the mod files from your computer.

We currently don't offer any way to uninstall just the mod by itself - **the below process will uninstall both the game and the mod.**

## Uninstalling the game and mod files

1. Locate the game folder, **and remember it for later**, using the instructions below:
    1. Steam Users
        1. Open Steam
        2. Right click on the game to uninstall, then click "Properties"
        3. Click the "Local Files" tab
        4. Click the "Browse Local Files..." button. This will open the game folder.
    2. GOG and MangaGamer Users
        1. You'll need to know where you installed the game, or use the game shortcut to find where it was installed
2. Uninstall the game normally using Steam/GOG/Mangagamer launcher or add/remove programs
3. Manually delete the game folder you found earlier. This will ensure the mod files are fully removed.

## Uninstalling your saves

1. **Disable Steam Sync/GOG Cloud Saves**. Your save files will magically reappear if you don't do this step.
2. Navigate to the game's save folder as described in [the FAQ "Save File Locations"](FAQ.md#save-file-locations)
3. Delete the whole save folder (you may wish to backup the global.dat file if you are re-installing)

--8<-- "uninstall-steamgrid.md"

## Uninstalling registry entries (Advanced, Windows Only)

The base game makes some registry entries to save things like screen resolution and fullscreen/windowed settings. They are stored in the registry at `Computer\HKEY_CURRENT_USER\Software\Mangagamer\Higurashi When They Cry - Ch.1 Onikakushi` (for Ch.1). In some rare circumstances, it may be necessary to clear your registry entries. Follow the instructions below to clear all Higurashi games' registry settings:

1. Download the file [`delete_higurashi_registry.reg`](../files/delete_higurashi_registry.reg)
2. Double click the `delete_higurashi_registry.reg` to run it
3. Accept the UAC prompt
4. Accept the warning message (press yes)

If you're worried about the .reg file, just open it in a text editor and inspect it. The file
just lists each registry folder, prefixed with a `-` to delete that entry. You could also manually use
`regedit` to delete each entry listed in the file.
