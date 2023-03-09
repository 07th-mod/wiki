## Important Pre-installation steps (Wine/Proton Setup)

### Native vs Wine/Proton Background Information

There are two methods of running the game on Linux:

1. Running the Native Linux version of the game
2. Running the Windows version of the game on Linux  using Proton (Steam/Mangagamer/GOG) or Wine (Mangagamer/GOG)

As some users have issues with the Native Linux version of the game, we recommend the following:

- **If you bought from Steam**, it is suggested you enable Proton before installing the mod to avoid the above problems. See the instructions below.

- **If you bought from GOG/Mangagamer**:

    - We suggest trying the Native Linux version of the game first
    - If you have problems with the native version, you can try Wine (plain Wine, using Lutris, or using Minigalaxy (GOG only)). **However you will need to research how to do this yourself.** (If anyone wants to provide a tutorial for this, please let us know.)
    - You might only encounter issues with the Native version when reaching Chapter 5 onwards

!!! info "If you're not sure if you installed Native Linux or Wine/Proton, the installer will tell you after you've selected the game to be modded."

### Steam Instructions for enabling/disabling Proton

**NOTE: Saves might not be compatible between Native and Proton! Changing this setting may lose your save files!**

1. Make sure the game is installed. Take note of whether the game is already modded.
2. Right click the game you want to modify in your Steam Library
3. Click **Properties..**
4. On the left hand panel, click **Compatability**
5. Tick the checkbox "Force the use of a specific Steam Play compatibility tool"
6. Choose the version you want to use from the dropdown box:
    - If you want to use Native Linux version, choose 'Steam Linux Runtime'
    - If you want to use Proton, choose the latest stable Proton version (you can try 'Proton Experimental' if you have problems with the stable versions)
    ![Steam Switching Between Native and Proton](https://07th-mod.com/wiki/img/steam-compatability.png)
7. **Click "Update"** apply the changes, and wait the update to finish (make sure the game is closed).
    - ![Steam Update Button](https://07th-mod.com/wiki/img/steam-update-button.png)
8. If you haven't installed the mod on this game before, proceed to "Starting the Installer"
9. If you've already installed the mod on this game before:
    - If the mod is already installed, **switching between Native and Proton with Steam will overwrite important mod files**. This usually causes a **crash** or **black screen** on startup
    - To fix this, you need to re-run the installer, and 'update' the mod, **making sure to select the 'Quick Repair'** option.
    ![Quick Repair Option Screenshot](https://07th-mod.com/wiki/img/quick-repair.png)