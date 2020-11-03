# Installer FAQ and Troubleshooting

Welcome to the Installer FAQ. You can find your question using the **instant search bar** at the top of the screen, or the **Table of Contents** on the right.

## What if my issue is not listed below?

Please proceed to [How to get support](../Installer/support.md).

## Web GUI does not load / hangs

- **Try refreshing the page(s) if the installer web GUI fails to load**

## Connection Troubleshooting

First, double check you can access BOTH the following websites in your browser without error:

1. [https://07th-mod.com/](https://07th-mod.com/)

2. [https://raw.githubusercontent.com/07th-mod/python-patcher/master/installData.json](https://raw.githubusercontent.com/07th-mod/python-patcher/master/installData.json)

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

### Can't launch installer - I get a `http.client.UnknownProtocol: HTTP/2.0` error when using a VPN or proxy

Please try running the installer without going through a VPN or proxy. Some company/school networks may also cause the same error, as they act as a proxy.

Specifically, "UltraSurf VPN" is known to cause this problem.

### While using anti-censorship software (eg. Psiphon), the installer fails to download files, but my browser can download the same files just fine

Please enable the "VPN mode" of your anti-censorship (if it has it). This ensures the installer passes through the anti-censorship software.

This is known to affect the anti-censorship software "Psiphon" (see ["Does Psiphon for Windows proxy all of my Internet traffic?"](https://psiphon.ca/en/faq.html))).

### Installer crashes on launch - The log has a "TimeoutError: [WinError 10060] A connection attempt failed ..."

Please check if any antivirus/firewall software is blocking the installer. "Comodo Firewall" is known to cause this issue.

### Windows - Installer crashes on launch - A Python-related error is raised

Please move the installer .exe to a fresh subfolder and run it from there. This forces a fresh re-extraction of the installer files.

### Windows - Installer crashes with an error about missing VCRUNTIME140.DLL (or similar).

Download and install the [Visual C++ Redistributable](https://www.microsoft.com/en-us/download/details.aspx?id=52685) on your system.

### Download or Init stage gets stuck - Says "0B/0B CN:1 DL:0B"

We have noticed that the downloader we use can get stuck sometimes. This may be related to the internet connection you're using, or a temporary problem server-side.

You can try restarting the installer, or trying the download on another day.

Please also go through the "Connection Troubleshooting" section above, and make sure you can access the two links.

### Download or Init stage fails - I get a SSL/TLS handshake failure from Aria2c

Some users have reported getting the following error (will appear in the log):

`SSL/TLS handshake failure: Error: The revocation function was unable to check revocation because the revocation server was offline.`

The following may help you fix this issue:

- Disable any VPN or proxy you are using, or try a different internet connection if you are at a school/hotel/business etc.
- If you have any Windows updates in-progress, let them fully complete before running the installer (including required restarts)
- Reboot your computer, then try running the installer again

Also see next FAQ if you're on Linux.

### Linux - Download stage fails - Failed to load trusted CA certificates

Some users on OpenSuse and Fedora Linux have reported a failure during download:

`Failed to load trusted CA certificates from /etc/ssl/certs/ca-certificates.crt. Cause: error:02001002:system library:fopen:No such file or directory`

This is because either the default location of the certificate is somewhere else, or there is no certificate present.

We're not sure how to properly fix this issue, but users have reported the following could fix the issue:

- copying or symlinking `/etc/ssl/certs/ca-bundle.crt` -> `/etc/ssl/certs/ca-certificates.crt`
- copying or symlinking `/var/lib/ca-certificates/ca-bundle.pem` -> `/etc/ssl/certs/ca-certificates.crt`

NOTE: you may want to remove it after the install finishes, incase it causes issues with other programs. If you know how to fix this issue 'properly' please help us by commenting on this [GitHub issue](https://github.com/07th-mod/python-patcher/issues/80)

### Other SSL/Certificate Errors

- During download of a file from Github: `SSL/TLS handshake failure: Error: The certificate chain was issued by an authority that is not trusted.`
    - We had a user with this error when the installer attempted to download a URL from Github (their browser worked fine though). The user was accidentally using their company's VPN to download the installer, which blocked Github. If you get this error, please check if you are on a 'special' network (VPN or Company/School/University Network)/try another network. Also check if your antivirus software intercepts SSL certificates (like Bitdefender).

## Other Installer Issues

### Extraction stage fails - I get an "Acess Denied" error when overwriting files

During the extraction stage, the installer will fail with an error message similar to:

`ERROR: Can not open output file : Access is denied. : c:\program files (x86)\steam\steamapps\common\Higurashi 03 - Tatarigoroshi\HigurashiEp03_Data\StreamingAssets\CG\sprite\normal\re2b_komaru_b1_1.png`

You can try the following solutions. Please try them in order.:

1. **Restart your computer / Close other programs which could interfere:**
    - To make sure no programs are restricting file access:
        - Disable **Steam / GOG Downloader/Galaxy** launching on startup
        - Restart your computer, then wait for your computer to settle down
        - Start the installer immediately, **without launching any other programs**
    - In particular, make sure the game (Umineko or Higurashi) are closed, and also the launcher (Steam or GOG Downloader/Galaxy)

2. **Move or copy the game folder out of Program Files so the installer can access it:**
    - Move or copy the game folder to `Desktop` or `My Documents` - somewhere you know modifying and deleting files is allowed
    - Retry the install. You can move the game folder back after the install is finished.

3. **Antivirus Software: Add an exception for the game folder/our installer (AVG, Norton etc.)**
    - Note that Windows Defender usually causes no issues besides the initial popup - if you just have Windows Defender then ignore this solution.
    - You will have to research how to add exceptions in your particular Antivirus software:
        1. Most Likely: Check if your antivirus software is blocking the installer (add an exception for the installer .exe)
        2. Less Likely: Check if your antivirus software is blocking the game folder access (add an exception for the game folder)

4. **Attempt the install as an Administrator user (not a "Standard User")**
    - I've tested installing to an administrator's installation as a Standard User and it worked just fine. But it's worth a try if the above doesn't work and you're a Standard User.

5. **Not recommended: Manually delete the problematic files**
    - Open the installer log, and search for errors: `ERROR: Can not` or `Access is denied`
    - Delete the files/folders which the installer couldn't overwrite, then retry the install
    - You may need to repeat this multiple times, and you might accidentally delete the wrong file, so this method is not recommended.
    - If you get an access denied message from Windows when you try to delete the files:
        - [Download this batch file](https://github.com/drojf/windows-permission-fixer/raw/master/RUN_AS_ADMIN-grant_this_folder_admin.bat), and place it inside the game directory
        - **Run the batch file as Administrator** to regain permissions
        - The batch file will attempt to give access to Administrators for all files in the folder

If you manage to resolve this issue, **please let us know what method worked** on our [Discord server](https://discord.gg/pf5VhF9).
