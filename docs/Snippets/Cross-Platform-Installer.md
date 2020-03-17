## Multiplatform installer (Windows, Mac and Linux)

## Multiplatform installer instructions

1. Click on your operating system below for instructions on downloading and launching the installer.

    ??? example "Windows"
        1. Download and Run the `07th-Mod.Installer.Windows.exe` file from the [Download Page](https://github.com/07th-mod/python-patcher/releases)
        2. A Windows SmartScreen warning may appear. If it does, click "More info", then choose "Run anyway".
        3. A console window will popup. DO NOT CLOSE THIS WINDOW until you are finished using the installer.
        4. Wait while the installer extracts to the folder `07th-mod_installer`.
        5. When extraction is finished, the installer GUI (a web page) will open. DO NOT CLOSE THIS PAGE.
        6. Continue with the instructions below.

    ??? example "Mac"
        1. Download the [Mac Installer](https://github.com/07th-mod/python-patcher/releases)
        2. Double-click on the zip to extract it (your browser may automatically do this after downloading)

            !!! warning
                The zip contains two hidden files that are required by the installer.  If you try to move the `install` file out of the folder, it won't be able to find them.  If you really want to move the `install` file out of the folder, press ⇧⌘. (Shift-Command-Period) to temporarily enable showing of hidden files and copy the `.7za` and `.aria2c` files to the same folder.

        3. Right click on the file called `install` and choose `Open`
        4. If prompted with a security prompt, choose `Open`

    ??? example "Linux"
        --8<-- "gnome-crash-warning.md"

        1. Install the following using your distribution's package manager:
            * Python (2 or 3)
            * Python Tkinter
                * **Ubuntu**: `sudo apt-get install python-tk`
                * **Arch Linux**: `sudo pacman -S tk`
                * **Fedora**: `sudo dnf install python2-tkinter` or <br> `sudo dnf install python3-tkinter`
                * If your distribution is not listed, you may need to lookup how to install tkinter on your particular distribution
        2. Download and extract the [Linux Installer](https://github.com/07th-mod/python-patcher/releases)
        3. Run the shell script called `install`

2. Opening the installer will launch a page in your browser. **Do not close this page**.
3. On the web page that was just launched, click on the game you want to mod.
4. Fill in your game path, and mod options as applicable, then start the installation.

    ??? example "Mac - If path auto-detection fails - Finding Game Path Manually"
        If game path auto-detection fails, you can follow these instructions to find the game path:

        1. Click the big green "Select Application (.app file) Manually (Open File Dialog)" button, just below the path entry textbox.
        2. A Finder window entitled "Please choose a game to install to" will open. We will leave it for now, but need it later so don't close it
        3. Open Steam, and navigate to your game list
        4. Right-click on the game you want to mod in the game list, and select "Properties"
        5. Navigate to the "LOCAL FILES" tab of the window that popped up
        6. Click "Browse Local Files". Another finder window will pop up, showing the game files.
        7. Locate the "Umineko1to4"/"HigurashiEp0X" file, which should visually have a proper game icon. Ignore the other files without a proper icon. These files have the ".app" extension, but the extension may be hidden.
        8. Drag and drop the file onto the previously opened "Please choose a game to install to" Finder Window
        9. Click the "Choose" button

        For reference, the default steam folder is `~/Library/Application Support/Steam/steamapps/common/`, but yours may be different.

5. To stop an install that is in progress, you MUST close the terminal window (the black box with lots of text).
6. Carefully read the information that appears once the install has finished.

### Installer FAQ and Troubleshooting

#### Connection Troubleshooting

First, double check you can access BOTH the following websites in your browser without error:

[http://07th-mod.com/](http://07th-mod.com/)

[https://raw.githubusercontent.com/07th-mod/python-patcher/master/installData.json](https://raw.githubusercontent.com/07th-mod/python-patcher/master/installData.json)

If you cannot access these websites on any computer or phone (on local wifi, NOT mobile internet) that you try:

- you may have a government firewall blocking access to the above websites.
- you might be in Japan (we currently don't allow downloads from Japan for legal reasons).
- an ISP/company/government firewall blocking access to the above websites.

To fix these issues, we suggest using a free VPN, such as [https://protonvpn.com/](https://protonvpn.com/) (do not use with P2P software) or [https://www.vpngate.net](https://www.vpngate.net/en/download.aspx) (harder to use). This will bypass any external blocking of the above websites.

If you cannot open these websites in your browser on your particular computer, but it works on other connections/other computers, you may have a problem with:

- a local antivirus's firewall blocking access to the above websites. You may need to set an exception for the above websites.
- a VPN or proxy interfering with access to the above websites (unlikely). You may need to disable the VPN or proxy.

If you can open these websites in your browser, but the installer has a problem accessing these websites, you may have a problem with:

- an antivirus program blocking our installer specifically (blocking the .exe). You may need to add an exception for our installer.
- an antivirus or ad-blocker program (or pi-hole) blocking those websites specifically. You may need to add an exception for those websites.
- your anti-censorship software or VPN software not routing our installer's connection. You may need to enable VPN mode in your software (see below about anti-censorship software).

#### Can't launch installer - I get a `http.client.UnknownProtocol: HTTP/2.0` error when using a VPN or proxy

Please try running the installer without going through a VPN or proxy. Some company/school networks may also cause the same error, as they act as a proxy.

Specifically, "UltraSurf VPN" is known to cause this problem.

### While using anti-censorship software (eg. Psiphon), the installer fails to download files, but my browser can download the same files just fine

Please enable the "VPN mode" of your anti-censorship (if it has it). This ensures the installer passes through the anti-censorship software.

This is known to affect the anti-censorship software "Psiphon" (see ["Does Psiphon for Windows proxy all of my Internet traffic?"](https://psiphon.ca/en/faq.html))).

#### Installer crashes on launch - The log has a "TimeoutError: [WinError 10060] A connection attempt failed ..."

Please check if any antivirus/firewall software is blocking the installer. "Comodo Firewall" is known to cause this issue.

#### Windows - Installer crashes on launch - A Python-related error is raised

Please move the installer .exe to a fresh subfolder and run it from there. This forces a fresh re-extraction of the installer files.

#### Download stage fails - I get a SSL/TLS handshake failure from Aria2c

Some users have reported getting the following error (will appear in the log):

`SSL/TLS handshake failure: Error: The revocation function was unable to check revocation because the revocation server was offline.`

The following may help you fix this issue:

- Disable any VPN or proxy you are using, or try a different internet connection if you are at a school/hotel/business etc.
- If you have any Windows updates in-progress, let them fully complete before running the installer (including required restarts)
- Reboot your computer, then try running the installer again

#### Extraction stage fails - I get an "Acess Denied" error when overwriting files

During the extraction stage, the installer will fail with an error message similar to:

`ERROR: Can not open output file : Access is denied. : c:\program files (x86)\steam\steamapps\common\Higurashi 03 - Tatarigoroshi\HigurashiEp03_Data\StreamingAssets\CG\sprite\normal\re2b_komaru_b1_1.png`

You can try the following to fix the error. :

1. **Close other programs which could interfere:**
    - Close the game launcher (Steam or GOG Downloader/Galaxy)
    - Close the game being patched (Umineko or Higurashi)
    - Or just close everything except the installer, incase something is unexpectedly blocking write access.

2. **Move or copy the game folder out of Program Files so the installer can access it:**
    - Move or copy the game folder to `Desktop` or `My Documents` - somewhere you know modifying and deleting files is allowed
    - Retry the install. You can move the game folder back after the install is finished.

3. **If you have additional antivirus software, check it is not blocking access to the folder**

4. **Attempt the install as an Administrator user (not a "Standard User")**

5. **Check you have permissions to delete the file (for Power Users):**
    - Try manually deleting the file which fails to be overwritten as a test
    - If you are unable to delete the file yourself
        - [Download this batch file](https://github.com/drojf/windows-permission-fixer/raw/master/RUN_AS_ADMIN-grant_this_folder_admin.bat), and place it inside the game directory
        - **Run the batch file as Administrator** to regain permissions
        - The batch file will attempt to give access to Administrators for all files in the folder

6. **Check the folder is not read-only:**
    - Right click on the game folder. Under "Attributes:", examine the "Read-only" checkbox
    - Untick the checkbox (if it is ticked, read only is definitely enabled. If it has a square, read-only *might* be enabled)
    - Note that **even after disabling read-only, the checkbox will still have a square symbol**, please don't worry about that.

If you manage to resolve this issue, please let us know what method worked on our [Discord server](https://discord.gg/pf5VhF9).

#### Linux - Download stage fails - Failed to load trusted CA certificates

Some users on OpenSuse and Fedora Linux have reported a failure during download:

`Failed to load trusted CA certificates from /etc/ssl/certs/ca-certificates.crt. Cause: error:02001002:system library:fopen:No such file or directory`

This is because either the default location of the certificate is somewhere else, or there is no certificate present.

We're not sure how to properly fix this issue, but a user reported copying or symlinking the `/etc/ssl/certs/ca-bundle.crt` to `/etc/ssl/certs/ca-certificates.crt` fixed the issue (NOTE: you may want to remove it after the install finishes, incase it causes issues with other programs). If you know how to fix this issue 'properly' please help us by commenting on this [GitHub issue](https://github.com/07th-mod/python-patcher/issues/80)

----

!!! bug
    **This installer is currently in development.** You might find bugs, and things might not always work - We would be grateful if you report bugs on Github or our Discord server.

### Power Users

??? info "(Power Users Only) Install from Source"
    1. Install these dependencies:

        * Python (2 or 3)
        * Python Tkinter
        * 7-zip
        * Aria2
        * git

    2. Clone our git repository: `git clone https://github.com/07th-mod/python-patcher.git`
    3. Run `python main.py` or the equivalent command on your system


??? info "Command line interface"
    The installer also ships with an alternative command line interface for advanced users, in the form of the `cli.py` script. It can be executed by passing several arguments to it. The following arguments are required:

    - `-g GAME` -- specify the game to install. This should be words separated by `-` that are
    sufficient to recognise the necessary mod, e.g. `minagoroshi` or `umineko-question`.
    - `-p PATH` -- the path to the game installation location.
    - `-m MOD_TYPE` -- the type of the mod, such as `full`, `voice-only`, `adv-mode`, `novel-mode`, etc.

    The following two are optional:

    - `-o MOD_OPTION` -- used to install optional mod options, e.g. `bgm-fix` or `ryukishi-sprites`.
    Can be repeated several times to include multiple options, e.g. `-o bgm-fix -o se-fix`.
    - `--non-steam` -- this should be specified if patching a non-Steam version of a game.


The web page is hosted entirely locally (and only on the loopback interface) on your computer by the installer - it is not hosted on a remote web page.
