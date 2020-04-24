# 07th-mod Support Checklist

First, check if your question is already answered in the following FAQs

- [Installer FAQ](Installer/faq.md) (for download/installer related problems)
- [Higurashi FAQ](Higurashi/FAQ.md)
- [Umineko FAQ](Umineko/Umineko-Part-0-TroubleShooting-and-FAQ.md)

If your question is not already answered, **please do the following**:

<ol>
<li>Please fill in the below template and copy and paste it into our <a href=https://discord.gg/pf5VhF9>Discord Server</a><br>
Paste it into the <b>#higu_support</b> or <b>#umi_support</b> channel (accept the server rules to access)
<textarea style="width:100%;height: 350px;font-family:Arial, Helvetica, sans-serif">
The problem: [The game crashes on startup]

The game: [Higurashi Ch.3]

The mod variant: [Full/Voice Only/ADV]

The store: [Steam/Mangagamer/GOG]

Your OS: [Windows/Mac/Linux]

I installed the game: [Manually/Using the Installer]

Mod Install Date: [Yesterday/A Month Ago]

State anything "special" about your computer's setup: [School/Company Computer/Old Laptop]
</textarea>
</li>
<li>Please upload a screenshot of the bug, if applicable <b>and spoiler tag it if it is a spoiler!</b></li>
<li>If you have <b>problems installing</b>, follow <a href="../Installer/support">these Installer Support Instructions</a> to get your log file and submit it to the discord</li>
<li><b>If your game is crashing</b> or <b>the devs ask you for the log/save files</b>, expand the instructions below to get your log file and save files for submission</li>
</ol>


??? example "4a. Higurashi Log Files and Save Files"
    #### Game Log (output_log.txt)
    - On Windows, the log is located in the `HigurashiEp0X_Data` folder, in the game folder. For example `C:\games\Steam\steamapps\common\Higurashi When They Cry\HigurashiEp01_Data\output_log.txt`.
    - On MacOS, the log is located at `/Users/<yourusername>/Library/Logs/Unity/Player.log`
    - On Linux `TODO: fill out Linux log location`

    #### Save Files (*.dat files)
    You may need to zip all the save files together before you submit them.

    - Windows: `C:\Users\[YOUR_USERNAME]\AppData\Roaming\MangaGamer\higurashi01`
    - MacOS: `~/Library/Application Support/unity.MangaGamer.Higurashi When They Cry - Ch.1 Onikakushi`
    - Linux: `~/.config/unity3d/Mangagamer/Higurashi When They Cry _ Ch_1 Onikakushi`

??? example "4b. Umineko Log Files and Save Files"
    #### Save Files

    - First check the `mysav` folder inside the game folder: `C:\Program Files (x86)\Steam\steamapps\common\Umineko\mysav`
    - Occasionally can be found at the steam folder, even if the game is not in the steam folder:  `[PATH_TO_STEAM_FOLDER]\Steam\steamapps\common\Umineko\mysav`  ([See this FAQ](http://07th-mod.com/wiki/Umineko/Umineko-Part-0-TroubleShooting-and-FAQ/#steam-sync-doesnt-work)). 

    #### Game Log

    1. **ONLY SEND THE GAME LOG IF ASKED BY DEVELOPERS**:
        - Start the game in Debug mode by double clicking `Umineko1to4_DebugMode.bat` or `Umineko5to8_DebugMode.bat`, located in the game folder.
        - An folder will immediately popup showing the `stdout.txt` and `stderr.txt` files, but don't submit them yet.
        - Play the game until you make game crash, then submit the `stdout.txt` and `stderr.txt` text files to us.
    2. On Linux or Mac you can view errors by launching the game from a console windows

#### Submitting via Github Issues

If you don't want to use Discord, you can submit to the appropriate Github Issues page. <br> (A Github Account is required):
<table style="margin-left: 80px">
<thead>
<tr class="header">
<th>Github Issues Links</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<td>
    <a href="https://github.com/07th-mod/onikakushi/issues">Onikakushi Ch.1</a><br>
    <a href="https://github.com/07th-mod/watanagashi/issues">Watanagashi Ch.2</a><br>
    <a href="https://github.com/07th-mod/himatsubushi/issues">Himatsubushi Ch.3</a><br>
    <a href="https://github.com/07th-mod/meakashi/issues">Meakashi Ch.4</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/tsumihoroboshi/issues">Tsumihoroboshi Ch.5</a><br>
    <a href="https://github.com/07th-mod/minagoroshi/issues">Minagoroshi Ch.6</a><br>
    <a href="https://github.com/07th-mod/tatarigoroshi/issues">Tatarigoroshi Ch.7</a><br>
    <a href="https://github.com/07th-mod/higurashi-console-arcs">Console Arcs</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/umineko-question/issues">Umineko Question Arcs</a><br>
    <a href="https://github.com/07th-mod/umineko-answer/issues">Umineko Answer Arcs</a><br>
</td>
</tbody>
</table>
