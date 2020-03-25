# How to get Installer support

Support is currently available in our [Discord channel](https://discord.gg/pf5VhF9) and on [Github Issues](https://github.com/07th-mod/python-patcher/issues/new/choose).

When asking for support, keep in mind the following:

- A description, screenshots and/or error messages of the issue
- The **install log** - See ["Finding the install log"](#finding-the-install-log) below for more information.

Having the [install log](#finding-the-install-log) is essential to troubleshoot issues, so don't forget to upload it as an attachment to your message.

## Finding the install log

### Option 1: From the web interface

Once the install has started, click the green <b style="background: green; color:white; padding: 10px; line-height: 40px">DOWNLOAD LOG</b> button under the console ouptut. This will download a .zip file into your browser which you can then submit to us.

### Option 2 (Windows Only): From the install launcher

- Open the install launcher
- Click the <b style="background: SteelBlue; color:white; padding: 5px">⯈ Advanced Tools</b> expander
- Click the <b style="background: SteelBlue; color:white; padding: 5px">Show Installer Logs</b> button
- Send us the `*.txt` files by zipping all of them, or dragging them into Discord

### Option 3: Manual navigation

Use this method if the installer doesn't start at all.

#### Windows

If you saved the installer launcher to:

`C:\downloads\07th-Mod.Installer.Windows.exe`

your install logs would be located at:

`C:\downloads\07th-mod_installer\INSTALLER_LOGS\MOD-INSTALLER-LOG-[date].txt`

#### Linux and Mac

Look directly in the `07th-mod_installer\INSTALLER_LOGS` folder, as Linux and Mac do not have a launcher.

### Option 4: From the game folder

The installer will also attempt to save a log to the game being modded. Use this method if you have moved or deleted the installer launcher, or if you want to check the log for a specific game.

- For Umineko: The log will be placed directly in the game folder. Example:<br>`C:\games\Steam\steamapps\common\Umineko\MOD-INSTALLER-LOG-[date].txt`
- For Higurashi: In the `HigurashiEp0[X]_Data` subfolder (where X is the chapter number). This is the same location as the game logs. Example: <br> `C:\games\Steam\steamapps\common\Higurashi When They Cry\HigurashiEp01_Data\MOD-INSTALLER-LOG-[date].txt`
