!!! info "Looking for fast help?"
    [Join our Discord server](https://discord.gg/pf5VhF9), we try to get issues fixed as fast as possible there.


This page is dedicated to compile a list of resources in case you need help to install the patch, get it to run properly or report issues you find in our patches.


# Getting support on Discord

If you are a [Discord](https://discordapp.com/) user, we highly recommend [joining our server](https://discord.gg/pf5VhF9) (click here to join) to get support for simple issues. Usually, issues are solved faster there than on Github. Our Discord server has support channels for Higurashi, Umineko and also developer channels where you can ask broader questions about the patch. All channels are fine for installation issues, reporting bugs and general improvement of the patches (translation changes, graphical improvements, etc).


# Reporting issues on Github

[07th-Mod](https://github.com/07th-mod/) is an open-source group, meaning that our presence is much more meaningful on Github than on Discord. When there are convoluted issues that needs a lot of testing or fixes that are going to be deployed over time, we often recommend people to open an *issue* at a certain repository that relates to it. These issues are not only limited to getting help installing the patch or fixing small mistakes, they contribute a lot to our work because we can reference them and keep an open, static discussion that will not be buried over time.

If you don't know how to open an issue, create an account at Github [here](https://github.com/join) and read [this small guide on how to write issues](https://help.github.com/en/articles/creating-an-issue).

Below is a list of common repositories separated by category:

* Umineko
    * [Question Arcs](https://github.com/07th-mod/umineko-question/issues)
    * [Answer Arcs](https://github.com/07th-mod/umineko-answer/issues)
* Higurashi
    * [Console Arcs](https://github.com/07th-mod/higurashi-console-arcs/issues)
    * [Ch.1 Onikakushi](https://github.com/07th-mod/onikakushi/issues)
    * [Ch.2 Watanagashi](https://github.com/07th-mod/watanagashi/issues)
    * [Ch.3 Tatarigoroshi](https://github.com/07th-mod/tatarigoroshi/issues)
    * [Ch.4 Himatsubushi](https://github.com/07th-mod/himatsubushi/issues)
    * [Ch.5 Meakashi](https://github.com/07th-mod/meakashi/issues)
    * [Ch.6 Tsumihoroboshi](https://github.com/07th-mod/tsumihoroboshi/issues)
* General
    * [Wiki (mistakes, improvements)](https://github.com/07th-mod/wiki/issues)
    * [Website (07th-mod.com)](https://github.com/07th-mod/website/issues)
* Automatic installer
    * [Python installer](https://github.com/07th-mod/python-patcher)
    * [Windows installer](https://github.com/07th-mod/Higurashi_Installer_WPF)
  
You can find more repositories (mainly for developers) in our [Github organization](https://github.com/07th-mod/).


## How to properly report issues

In case you are wondering how to report your issues, we suggest following this template:

- ``[a description of the issue]``
- ``[pictures of the issue]`` (if applicable)
- The bug occurs just after ``[text from when bug occurs]`` is shown on the screen
- My operating system is ``[Windows, MacOS, Linux]``
- I installed the game ``[X Months ago]``
- I am running the ``[Full Patch / Voice only patch]``
- I installed the game ``[Manually / using the Automatic Installer]``
- My computer is a ``[Gaming Beast / Laptop with Integrated Graphics]``

If you are experiencing issues in-game, you might also want to add some files the game generates to help us understand the issue better. Here are some common procedures for each game:

* Higurashi
  1. Find the game installation folder, then go inside the ``HigurashiEp_Data`` folder.
  2. You will find a text file called ``output_log``, add it as an attachment in your issue or Discord message.
* Umineko
  1. Double click the "Umineko1to4_DebugMode.bat" file to start the game in debug mode. This file is located inside the game folder.
  2. Once you have started the game in debug mode, just play until the game crashes or behaves badly, then submit the stderr.txt and stdout.txt to us.
      * When game is started in debug mode, a folder will appear showing stderr.txt and stdout.txt

Please understand that these files might collect some information about your computer, such as:

* Where the game is installed (full path to game.exe)
* Your system username
* Your system specs (CPU, GPU, RAM and OS)

We do not receive these files unless you send them to us. Nothing is sent to our servers and no data is tracked by the patch. These files contain no sensitive information about your computer. You can open and read them using notepad or any text processor.

Also, please make sure to not post the content of these logs in the Discord chat or Github issue. These files are usually very long and might eat all the characters you are allowed to post. It also helps us reduce the clutter and make sure the files are readable the way they were generated by the games. Make sure to **always** attach the log in your message.
