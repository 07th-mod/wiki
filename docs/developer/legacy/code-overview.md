> Written by @ItaloKnox

In this article, we are going to make a breakdown of all the installer code, written in Windows batch (``*.bat``). See the previous page for more information on how the patch is installed, the dependencies and file it uses to complete the installation.

Below is a snapshot of the full code from a stable Higurashi installer release. The actual breakdown should be **below** the code.

Use the index below to navigate around the page:

- [Installer code](#installer-code)
    - [Colored text](#colored-text)
    - [timeout](#timeout)
    - [nul](#nul)
    - [aria2c](#aria2c)
    - [7za](#7za)
    - [powershell](#powershell)
    - [set](#set)
    - [xcopy](#xcopy)
    - [rmdir, mkdir and del](#rmdir-mkdir-and-del)
- [Updater code](#updater-code)
- [Flowchart](#flowchart)
    - [if exist](#if-exist)
    - [fc](#fc)

# Installer code

```batch
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

set version=v4.0.1

call :colorEcho a0 "Downloading graphics patch... (1 of 3)"
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-CG.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-CGAlt.zip
timeout /t 1 > nul

call :colorEcho a0 "Downloading voice patch... (2 of 3)"
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-Voices.zip
timeout /t 1 > nul

call :colorEcho a0 "Downloading patch... (3 of 3)"
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/onikakushi/releases/download/%version%/Onikakushi.Voice.and.Graphics.Patch.%version%.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Higurashi-Textboxes.zip
.\aria2c.exe https://github.com/07th-mod/resources/raw/master/onikakushi/updater.bat
timeout /t 1 > nul

call :colorEcho a0 "Checking for incomplete downloads..."
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/onikakushi/releases/download/%version%/Onikakushi.Voice.and.Graphics.Patch.%version%.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Higurashi-Textboxes.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-Voices.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-CG.zip
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-CGAlt.zip
timeout /t 1 > nul

call :colorEcho a0 "Extracting files..."
echo.
timeout /t 1 > nul
.\7za.exe x Onikakushi-CGAlt.zip
.\7za.exe x Onikakushi-CG.zip
.\7za.exe x Onikakushi-Voices.zip
.\7za.exe x Onikakushi.Voice.and.Graphics.Patch.*.zip
.\7za.exe x Higurashi-Textboxes.zip -aoa
rmdir /S /Q ..\StreamingAssets\CG > nul
rmdir /S /Q ..\StreamingAssets\CGAlt > nul
timeout /t 1 > nul

call :colorEcho a0 "Moving folders..."
echo.
echo D | xcopy /E /Y .\Managed ..\Managed > nul
echo D | xcopy /E /Y .\CGAlt ..\StreamingAssets\CGAlt > nul
echo D | xcopy /E /Y .\CG ..\StreamingAssets\CG > nul
echo D | xcopy /E /Y .\voice ..\StreamingAssets\voice > nul
echo D | xcopy /E /Y .\StreamingAssets ..\StreamingAssets > nul
mkdir ..\StreamingAssets\BGMAlt
mkdir ..\StreamingAssets\voiceAlt
mkdir ..\StreamingAssets\SEAlt

call :colorEcho a0 "Deleting useless files..."
echo.
timeout /t 1 > nul
rmdir /S /Q .\CG > nul
rmdir /S /Q .\CGAlt > nul
rmdir /S /Q .\StreamingAssets > nul
rmdir /S /Q .\voice > nul
rmdir /S /Q .\Managed > nul
del .\*.zip > nul
del ..\StreamingAssets\CompiledUpdateScripts\*.mg > nul
timeout /t 1 > nul

call :colorEcho a0 "All done, finishing in three seconds..."
timeout /t 3 > nul

exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
```

## Colored text

```batch
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
```

``...``

```batch
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
```

These two pieces of code (first one at the start, last one at the end of the script file) will handle the colored text in the installer. You can find more information about it in this [Stack Overflow question](https://stackoverflow.com/questions/4339649/how-to-have-multiple-colors-in-a-windows-batch-file/5344911#5344911).

The colors are called by using ``call :colorEcho a0 "string"``, where ``a0`` is the sample color used in this example. Usually, it's better to use ``echo.`` in the following line.

## timeout

``timeout /t 1 > nul``

``timeout`` is used to create a natural pause in the installation process. It's used in this installer to let the user read the text easier and artificially make the installation look less faster when multiple commands are being used. We use ``timeout`` together with the command ``> nul`` to hide the information from the user and make the screen cleaner. The sample above pauses the script for one second before running the next command.

## nul

```batch
timeout /t 1 > nul
rmdir /S /Q .\CG > nul
echo D | xcopy /E /Y .\Managed ..\Managed > nul
```

The ``nul`` command is widely used in the script to hide information from the user. It is often used to hide irrelevant information that is verbose and takes too much screen space.

## aria2c

``.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/resources/releases/download/Nipah/Onikakushi-CG.zip``
* ``--file-allocation=none`` forces ``aria2c`` to not allocate any space for the files. In case of failure, it will only take the actual downloaded space instead of the full space the downloaded file would normally take.
* ``--continue=true`` continues the download if the file already exists. Incomplete downloads will resume and complete downloads will be skipped.
* ``-x 8`` is the number of connections ``aria2c`` will make. Allows faster downloading, maximum number of connections is **16**.

``.\aria2c.exe --file-allocation=none --continue=true -x 8 -i local.txt``
* ``-i local.txt`` uses the file ``local.txt`` as the input for the download. The file can contain one or more links in a vertical list.

We use ``aria2c`` because it offers us the best download speeds and flexibility. It can be easily changed for another program such as ``wget`` considering the changes to keep the functionality have been made in the script.

## 7za

``.\7za.exe x Higurashi-Textboxes.zip -aoa``
* ``x`` extracts the file with its full path.
* ``-aoa`` overwrite files without the user input. Useful for applying updates.

The reason we use 7-zip is that of ``lzma``. It's free, open-source and offers a higher compression compared to ``.rar`` files. The software can be easily changed to any other alternatives that support the commands above. 

## powershell

> **This method is broken since March 2018.** We reverted to [set](#set). Last commit where this command was used: [08b15f45b1](https://github.com/07th-mod/resources/blob/08b15f45b1ca2b1bcd77454dc9ec319006f33b52/onikakushi/install.bat).

``powershell -command "(convertfrom-json (invoke-webrequest https://api.github.com/repos/07th-mod/onikakushi/releases/latest).content).assets.browser_download_url | set-content local.txt"``
* ``powershell -command ""`` calls Windows Powershell through the command line window and runs a command.
* ``(convertfrom-json (invoke-webrequest https://api.github.com/repos/07th-mod/onikakushi/releases/latest).content).assets.browser_download_url`` - a bit tricky: ``invoke-webrequest`` calls the link from the API to get the latest release; ``convertfrom-json`` converts the information to a readable state, looking especially for ``assets.browser_download_url``.
* ``|`` - runs a follow up command.
* ``set-content local.txt`` - instead of outputting the result in the screen, the command saves it in the file ``local.txt`` for use later.

This command was introduced later in development. This command basically uses the Github API to get the latest release for the installed chapter. Previously, we used to add the link manually. This command eliminates the need of doing this work every time a new patch is released.

This command has been pretty reliable but there are cases where it will miss. It is hard to reproduce and is probably related to security settings in the end user computer. Fortunately, it seems to have a 99% uptime despite commonly showing some information that might look like an error. It can be changed by ``grep`` with ``curl`` on Linux.

## set

``set version=v4.0.1``
* ``set`` creates a variable
* ``version`` is the variable name
* ``v4.0.1`` is the value stored in this variable
 

Since March 2018, we had to rollback to use variables to download the patch. Unfortunately, there seems to be an issue with Github and ``Invoke-WebRequest`` that results in a broken SSL/TLS communication. Using a variable allows us to just change a little bit of text for every update released, instead of manually fishing for every instance where the patch version is called. The downside of this method compared to powershell is that we have to manually update the installer code every time a new version is released. Powershell, though, didn't require any extra work since it would always get the latest version from the API.

The variable is called by using ``%version%``. Like in this example: 

```
.\aria2c.exe --file-allocation=none --continue=true -x 8 https://github.com/07th-mod/onikakushi/releases/download/%version%/Onikakushi.Voice.and.Graphics.Patch.%version%.zip
```

## xcopy

``echo D | xcopy /E /Y .\Managed ..\Managed > nul``
* ``echo D`` will input automatically the ``D`` key, that in this command relates to copying a directory instead of a file. This allows the user to walk away from the computer and not stall the installation for a simple input.
* ``xcopy /E /Y .\Managed ..\Managed``
    * ``/E`` will copy every subfolder, even if empty;
    * ``/Y`` will overwrite files with the same name without your consent (currently not very useful but still kept there);
* ``> nul`` - like already said above, hides the information from the user. After testing, it was decided to not display the copying process since it floods the screen with information that is hard to follow (the command copies a few hundred files).

We employed ``xcopy`` because the patch use big filenames and paths. ``move`` turned out to be very unreliable for the amount of errors it would cause because of the long paths. Since Windows XP hasn't been used in a long while, we can safely use ``xcopy`` to move the folders. The downside is that we have to use extra space since it only **copies** the folders instead of moving them. It can be changed to ``rsync`` on Linux.

## rmdir, mkdir and del

* ``rmdir /S /Q .\CG > nul``
    * ``/S`` removes the tree (directory and subdirectories).
    * ``/Q`` means quiet. Will remove without your consent.
* ``mkdir ..\StreamingAssets\BGMAlt`` - creates folders that can be used for alternative functions implemented by the modded [Assembly-CSharp.dll](https://github.com/07th-mod/higurashi-dev-guides/wiki/assembly-csharp.dll).
* ``del .\*.zip > nul`` deletes all the files with the ``.zip`` extension in the current folder.

These are mostly used to clear up space after a successful installation. ``mkdir`` will create a few folders that can be used in the future, but are currently empty. This should make the process easier for modders that want to fork our work.

***

# Updater code

> **The updater is currently broken. See [powershell](#powershell) and [set](#set).**

**Since most of the basic syntax used was also seen in the previous code, we will skip explaining those.**

```batch
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:start
call :colorEcho a0 "Comparing local version to remote version..." && echo:
timeout /t 3 > nul 
if exist local.txt (
    goto :compare
) else (
    echo No information about the local version found. Downloading the newest remote version available...
    goto :update
)

:compare
call :colorEcho a0 "Downloading remote information for comparison"
timeout /t 3 > nul
powershell -command "(convertfrom-json (invoke-webrequest https://api.github.com/repos/07th-mod/onikakushi/releases/latest).content).assets.browser_download_url | set-content remote.txt"
fc remote.txt local.txt > nul
if errorlevel 1 goto :newver

:samever
echo Looks like you have the latest version already installed, nothing to do here...
del remote.txt
exit

:newver
echo New version found, redirecting to download and installation...
goto :download

:update
call :colorEcho a0 "Downloading latest patch..." && echo:
powershell -command "(convertfrom-json (invoke-webrequest https://api.github.com/repos/07th-mod/onikakushi/releases/latest).content).assets.browser_download_url | set-content remote.txt"
goto :download

:download
.\aria2c.exe --file-allocation=none --continue=true -x 8 -i remote.txt
del local.txt
ren remote.txt local.txt
goto :install

:install
call :colorEcho a0 "Extracting files..."
echo.
timeout /t 1 > nul
.\7za.exe x *.Voice.and.Graphics.Patch.*.zip

call :colorEcho a0 "Moving folders..."
echo.
echo D | xcopy /E /Y .\Managed ..\Managed > nul
echo D | xcopy /E /Y .\StreamingAssets ..\StreamingAssets > nul

call :colorEcho a0 "Deleting leftovers..."
echo.
rmdir /S /Q .\StreamingAssets > nul
rmdir /S /Q .\Managed > nul
del ..\StreamingAssets\CompiledUpdateScripts\*.mg > nul
del *.zip

exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
```

# Flowchart

This flowchart shows how the updater behaves and the choices it will make:

```
check if local.txt exists >> if it exists >> download remote.txt >> compare both files >> if files are the same >> end updating process, nothing to update
                                ^                                                         ^ if files are different >> download patch >> install and clean up files >> change remote.txt to local.txt
                                ^ if it doesn't exist >> download remote.txt >> download patch >> install and clean up files >> change remote.txt to local.txt
```

## if exist
```batch
if exist local.txt (
    goto :compare
) else (
    echo No information about the local version found. Downloading the newest remote version available...
    goto :update
)
```
* ``if exist local.txt`` looks for the file ``local.txt`` (that holds the information about the current version, as seen on the previous page)
    * if it exists, it will compare the versions (see the next command)
    * if it doesn't exist (``else``), it will download the newest remote version available

This simple code checks if the file ``local.txt`` exists and proceeds to compare it to the file ``remote.txt`` (can be seen in the next command). If the file doesn't exist, it will proceed to download the file ``remote.txt`` and rename it to ``local.txt`` after a successful installation.

## fc
```batch
fc remote.txt local.txt > nul
if errorlevel 1 goto :newver
```

In case you have a file called ``local.txt`` in the ``temp`` directory, ``fc`` will compare the file to another file called ``remote.txt`` that was downloaded prior to the comparison. The result is hidden from the user since it is irrelevant to the process. ``if errorlevel 1`` means that if the two files are different, it will use ``goto :newver`` to go to the section where it will download the newest patch. If both files are the same, the updater will return a message saying that there is nothing to update.

The downside of this method is that both files can be tempered by the user to trigger the wrong result. It is a known flaw, but there is nothing to be afraid of as the user will most likely never touch it.