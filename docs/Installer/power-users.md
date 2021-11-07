# Alternative Installation Methods

Here are a few resources on getting the installer to run in alternative ways:

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
    sufficient to recognize the necessary mod, e.g. `minagoroshi` or `umineko-question`.
    - `-p PATH` -- the path to the game installation location.
    - `-m MOD_TYPE` -- the type of the mod, such as `full`, `voice-only`, `adv-mode`, `novel-mode`, etc.

    The following two are optional:

    - `-o MOD_OPTION` -- used to install optional mod options, e.g. `bgm-fix` or `ryukishi-sprites`.
    Can be repeated several times to include multiple options, e.g. `-o bgm-fix -o se-fix`.
    - `--non-steam` -- this should be specified if patching a non-Steam version of a game.


The web page is hosted entirely locally (and only on the loopback interface) on your computer by the installer - it is not hosted on a remote web page.