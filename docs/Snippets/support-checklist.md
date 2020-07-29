# 07th-mod Support Checklist

First, check if your question is already answered in the following FAQs

- [Installer FAQ](https://07th-mod.com/wiki/Installer/faq/) (for download/installer related problems)
- [Higurashi FAQ](https://07th-mod.com/wiki/Higurashi/FAQ/)
- [Umineko FAQ](https://07th-mod.com/wiki/Umineko/Umineko-Part-0-TroubleShooting-and-FAQ/)

If your question is not already answered, **please do the following**:

<ol>
<li>Please fill in the below template and copy and paste it into our <a href=https://discord.gg/pf5VhF9>Discord Server</a><br>
Paste it into the <b>#higu_support</b> or <b>#umi_support</b> channel (accept the server rules to access)<br>
(You can also submit via Github Issues, see bottom of page)
<textarea style="width:100%;height: 350px;font-family:Arial, Helvetica, sans-serif">
The problem: [The game crashes on startup]

The game: [Higurashi Ch.3]

The mod variant: [Full/Voice Only/ADV]

I bought the game at: [Steam/Mangagamer/GOG]

My operating system is: [Windows/MacOS/Linux]

I installed the patch: [Manually/Using the Installer]

Mod Install Date: [Yesterday/A Month Ago]

State anything "special" about your computer's setup: [School/Company Computer/Old Laptop]
</textarea>
</li>
<li>Please upload a screenshot of the bug, if applicable <b>and spoiler tag it if it is a spoiler!</b></li>
<li><b>Please always send your installer log file</b> and submit it to discord - expand and follow the instructions below.

<p>The log file is invaluable for diagnosing install and game startup issues, but also tells us info about your game version and your install options which helps solve any issue.</p>

<details class="example">
    <summary>Getting Installer Log Files</summary>
    <h2 style="margin-top: 10px;">Finding the install log</h2>
    You can use any of the methods below to get your log file.
    <h3>Option 1: In your browser downloads after an install</h3>
    <p>The installer automatically downloads .zip file containing your logs after an install finishes (or fails). Just check your recent browser downloads for a <code>07th-mod-logs.zip</code></p>
    <h3>Option 2: From the install launcher (Windows Only)</h3>
    <ul>
        <li>Open the install launcher</li>
        <li>Click the <b style="background: SteelBlue; color:white; padding: 5px">⯈ Advanced Tools</b> expander</li>
        <li>Click the <b style="background: SteelBlue; color:white; padding: 5px">Show Installer Logs</b> button. An explorer window will appear containing the log files. </li>
        <li>Send us the <code>*.txt</code> files by zipping all of them, or dragging them into Discord</li>
    </ul>
    <h3>Option 3: Manual navigation</h3>
    <p>Use this method if the installer doesn&#39;t start at all.</p>
    <h4>Windows</h4>
    <p>If you saved the installer launcher to:</p>
    <p><code>C:\downloads\07th-Mod.Installer.Windows.exe</code></p>
    <p>your install logs would be located at:</p>
    <p><code>C:\downloads\07th-mod_installer\INSTALLER_LOGS\MOD-INSTALLER-LOG-[date].txt</code></p>
    <h4>Linux and Mac</h4>
    <p>Look directly in the <code>install_data\INSTALLER_LOGS</code> folder, as Linux and Mac do not have a launcher.</p>
    <h3>Option 4: From the game folder</h3>
    <p>The installer will also attempt to save a log to the game being modded. Use this method if you have moved or deleted the installer launcher, or if you want to check the log for a specific game.</p>
    <h4>Windows</h4>
    <ul>
        <li>For Umineko: The log will be placed directly in the game folder. Example:
            <br><code>C:\games\Steam\steamapps\common\Umineko\MOD-INSTALLER-LOG-[date].txt</code></li>
        <li>For Higurashi: In the <code>HigurashiEp0[X]_Data</code> subfolder (where X is the chapter number). This is the same location as the game logs. Example:
            <br> <code>C:\games\Steam\steamapps\common\Higurashi When They Cry\HigurashiEp01_Data\MOD-INSTALLER-LOG-[date].txt</code></li>
    </ul>
    <h4>Linux and Mac</h4>
    <p>The installer may not always be able to place a log in the game folder, but you can check anyway. Look for a <code>MOD-INSTALLER-LOG-[date].txt</code> file in the game folder, or inside the <code>HigurashiEp0[X]_Data</code> subfolder.
</details>

</li>
<li><b>For Higurashi users with a game startup or crash issue</b>, expand the instructions below to get your <b>game log files</b>. 


<details class="example">
    <summary>Getting Higurashi Log Files</summary>
    <h4>Game Log (output_log.txt)</h4>
    <ul>
        <li>On Windows:</li>
        <ul>
            <li><strong>For Chapters 1-7</strong>, the log is located in the <code>HigurashiEp0X_Data</code> folder, in the game folder. For example <code>C:\games\Steam\steamapps\common\Higurashi When They Cry\HigurashiEp01_Data\output_log.txt</code>.</li>
            <li><strong>For Chapter 8</strong>, the log is located at<br><code>%appdata%/../LocalLow/Mangagamer/Higurashi When They Cry - Ch.8 Matsuribayashi</code>. The full path is something like<br><code>C:\Users\[YOUR_USERNAME]\AppData\LocalLow\MangaGamer\Higurashi When They Cry - Ch.8 Matsuribayashi\output_log.txt</code></li>
        </ul>
        <li>On MacOS: <code>/Users/&lt;yourusername&gt;/Library/Logs/Unity/Player.log</code><br>
        Access it by opening Finder, pressing Shift-Command-G, and pasting in <code>~/Library/Logs/Unity</code>
        </li>
        <li>On Linux: <code>~/.config/unity3d/MangaGamer/GameName/Player.log</code></li>
    </ul>
</details>

<b>Only if asked by the developers</b> submit your save files by following the instructions below.

<details class="example">
    <summary>Getting Higurashi Save Files</summary>
    <h4>Save Files (*.dat files)</h4>
    <p>You may need to zip all the save files together before you submit them. <b>Only submit if asked.</b></p>
    <ul>
        <li>Windows: <code>C:\Users\[YOUR_USERNAME]\AppData\Roaming\MangaGamer\higurashi01</code></li>
        <li>MacOS: <code>~/Library/Application Support/unity.MangaGamer.Higurashi When They Cry - Ch.1 Onikakushi</code><br>
        Access it by opening Finder, pressing Shift-Command-G, and pasting in <code>~/Library/Application Support/</code>, then selecting the appropriate game folder
        </li>
        <li>Linux: <code>~/.config/unity3d/Mangagamer/Higurashi When They Cry _ Ch_1 Onikakushi</code></li>
    </ul>
</details>
</li>

<li>For Umineko users, <b>only follow the instructions below if asked.</b>

<details class="example">
    <summary>Getting Umineko Log Files and Save Files</summary>
    <h4>Save Files</h4>
    <ul>
        <li>First check the <code>mysav</code> folder inside the game folder: <code>C:\Program Files (x86)\Steam\steamapps\common\Umineko\mysav</code></li>
        <li>Occasionally can be found at the steam folder, even if the game is not in the steam folder: <code>[PATH_TO_STEAM_FOLDER]\Steam\steamapps\common\Umineko\mysav</code> (<a href="https://07th-mod.com/wiki/Umineko/Umineko-Part-0-TroubleShooting-and-FAQ/#steam-sync-doesnt-work">See this FAQ</a>). </li>
    </ul>
    <h4>Game Log</h4>
    <ol>
        <li>Windows Instructions:
            <ul>
                <li>Start the game in Debug mode by double clicking <code>Umineko1to4_DebugMode.bat</code> or <code>Umineko5to8_DebugMode.bat</code>, located in the game folder.</li>
                <li>An folder will immediately popup showing the <code>stdout.txt</code> and <code>stderr.txt</code> files, but don&#39;t submit them yet.</li>
                <li>Play the game until you make game crash, then submit the <code>stdout.txt</code> and <code>stderr.txt</code> text files to us.</li>
            </ul>
        </li>
        <li>On Linux or Mac you can view errors by launching the game from a console window</li>
    </ol>
</details>

</li>
</ol>


#### Submitting via Github Issues

If you don't want to use Discord, you can submit to the appropriate Github Issues page. We prefer Github for complicated bug reports and feature requests so we can keep track of them easier.

If you're unfamiliar with Github, [this handy guide](https://help.github.com/en/github/managing-your-work-on-github/creating-an-issue) will teach you how to create a Github issue. Note that a Github Account is required to submit issues.
<table>
<thead>
<tr class="header">
<th>Higurashi Git Issues</th>
<th></th>
<th>Umineko Git Issues</th>
<th>Other Git Issues</th>
</tr>
</thead>
<tbody>
<td>
    <a href="https://github.com/07th-mod/onikakushi/issues">Onikakushi Ch.1</a><br>
    <a href="https://github.com/07th-mod/watanagashi/issues">Watanagashi Ch.2</a><br>
	<a href="https://github.com/07th-mod/tatarigoroshi/issues">Tatarigoroshi Ch.3</a><br>
    <a href="https://github.com/07th-mod/himatsubushi/issues">Himatsubushi Ch.4</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/meakashi/issues">Meakashi Ch.5</a><br>
    <a href="https://github.com/07th-mod/tsumihoroboshi/issues">Tsumihoroboshi Ch.6</a><br>
    <a href="https://github.com/07th-mod/minagoroshi/issues">Minagoroshi Ch.7</a><br>
    <a href="https://github.com/07th-mod/matsuribayashi/issues">Matsuribayashi Ch.8</a><br>
    <a href="https://github.com/07th-mod/higurashi-console-arcs/issues">Console Arcs</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/umineko-question/issues">Umineko Question Arcs</a><br>
    <a href="https://github.com/07th-mod/umineko-answer/issues">Umineko Answer Arcs</a><br>
</td>
<td>
    <a href="https://github.com/07th-mod/python-patcher/issues">Installer Issues</a><br>
    <a href="https://github.com/07th-mod/wiki/issues">Wiki (mistakes, improvements)</a><br>
    <a href="https://github.com/07th-mod/website/issues">Website (07th-mod.com)</a><br>
</td>
</tbody>
</table>
