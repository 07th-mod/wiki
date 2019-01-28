> Written by @ItaloKnox

![code_2018-02-16_08-25-23](https://user-images.githubusercontent.com/4702556/36303352-0b09818e-12f3-11e8-9acc-49284797c69a.jpg)

The patch installer (pictured above) was built entirely in [Advanced Installer](http://advancedinstaller.com/). It consists of two parts, which are going to be covered by this article:
1. The main framework (built in Advanced Installer)
2. The installation code (built in Windows batch)

The installer uses the default installation method, with no complex changes. The executable bundles all the dependencies ([aria2c](http://aria2.sourceforge.net/), [7z](http://7-zip.org/)) and a script (sample below) that pulls the latest installer code from our [Resources repository](https://github.com/07th-mod/resources/). It can be easily replaced with a zip containing all the dependencies, a better script that handles the download using available base command line tools or a different installer creator.

```batch
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

call :colorEcho a0 "Removing the current installation script..."
echo.
call :colorEcho 0a "If you get an error, this is completely normal!"
echo.
del .\install.bat > nul
timeout /t 2 > nul

call :colorEcho a0 "Downloading the installation script..."
echo.
timeout /t 3 > nul
.\aria2c.exe -o install.bat https://raw.githubusercontent.com/07th-mod/resources/master/onikakushi/install.bat

call :colorEcho a0 "Running the installation script..."
echo.
timeout /t 3 > nul
call install.bat

exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
```

After the user selects the install folder and start the installation, the installer will unpack the dependencies into a folder called ``temp``, that is located at ``HigurashiEp**_Data`` (where ``**`` equals the chapter number). This ``temp`` folders holds all the base files to install the patch, as pictured below:

![firefox_2018-02-16_08-38-32](https://user-images.githubusercontent.com/4702556/36303874-cdd24132-12f4-11e8-90e9-ed04e3cef1b0.png)
* ``7za.exe``, ``7za.dll`` and ``7zxa.dll`` are 7-zip dependencies required to extract the patch.
* ``aria2c.exe`` is a dependency required to download the patch.
* ``Onikakushi Patch Installer.exe`` is a converted Windows batch file (``*.bat``) that uses the code sampled above. We have a flaw in Advanced Installer that makes us unable to call Powershell using a regular ``.bat`` instead of the ``.exe`` file. See the next page for more details.
* ``installer.bat`` is the file pulled from our [Resources repository](https://github.com/07th-mod/resources/) to download and install the patch. See the next page for more details.
* ``updater.bat`` is the file pulled from our [Resources repository](https://github.com/07th-mod/resources/) to update the patch without requiring a new installation. It uses the file ``local.txt`` (that holds the link to the latest patch) to keep the version tracking. See the next page for more details.

The current installer settings ends prematurely leaving only the command line window (that runs ``installer.bat``) open. This is a known issue, but it doesn't affect the usage or installation. The ideal scenario would be to have the installation window close after the command line window finished working, closing the two at the same time and showing the success message.

For the breakdown on how the installation code works, see the next page: [Code overview](https://github.com/07th-mod/higurashi-dev-guides/wiki/code-overview).