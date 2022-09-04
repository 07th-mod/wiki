Written by [@enumag](https://github.com/enumag/).

Generally it's a collection of console scripts to easily do some changes in the higurashi game scripts and/or to analyze them to discover likely mistakes and make the work on other parts of the patch easier.

The voice inserter is not part of this repository only because it's older and there is a little benefit for integrating it now.

In this guide I'll cover how to make it work, how to use the scripts and which command is for what. Note that many of the commands are now obsolete and I'll intentionally skip them.


Installation
----

The voice inserter script is written in PHP and you can find it in this [repository](https://github.com/07th-mod/higurashi-patch-compiler).

To run it you'll need PHP 7.1+. Some modules that are not enabled by default might be necessary too but I can't remember which. It should be relatively easy to find it out from the errors.

You will also need [composer](https://getcomposer.org/) to install some PHP libraries.

Some of the commands (mainly those related to ADV mode) require a MySQL database (MariaDB should work too). I also recommend to get a tool like [adminer](https://www.adminer.org/) to browse the database and run commands.

When everything is installed check your installation using `php -v` and `composer --version`.

Finally download or `git clone` the [compiler repository](https://github.com/07th-mod/higurashi-patch-compiler).


Preparation
----

Run composer install in the compiler root directory (where composer.json file is located).

Create a MySQL database and run the database.sql file in it. I usually do it using adminer.

Copy the `config/local.example.yml` to `config/local.yml` and adjust the database connection parameters to match your database.


Commands
----

You can run the commands using `php console.php <command> [<parameters>]`. For full list of commands run `php console.php list`. Any command not listed on this page is either new, internal (used by other commands) or obsolete. Avoid using them unless you really know what you're doing.

Most of the commands will put the updated scripts into `temp/<directory>` where directory should match the command you're running.

## `higurashi:full-arc-upgrade <arc>`

Fully upgrades a newly released MG arc or a newly translated console arc with ADV mode, DLL updates and LipSync.

`<arc>` = name of the arc you want to upgrade, for example `higurashi:full-arc-upgrade someutsushi`. Shortcuts are supported so `higu:full some` is equivalent.

This command internally uses `higurashi:adv`, `higurashi:dll-update`, `higurashi:lip-sync`, `higurashi:voice-pack`, `higurashi:sprite-pack` and other commands. It's basically the all-in-one upgrade.

The output files will be available in `temp/full-upgrade` directory.

Note: for regular MG arc, the PS3 voices and graphics patch should be done before using this.

Aside from the updated scripts there will be some sh files to generate sprite packs (including lipsync sprites) and voice packs (including spectrum files). To use these shell scripts you will need to prepare a directory structure with the PS3 sprites and voices. See this issue for details: https://github.com/07th-mod/onikakushi/issues/103 (Note: download links in that issue are outdated and won't work anymore. The devs have access to the backups.)

## `higurashi:voice-pack`

Simple script to generate an sh script to prepare `voice` + `spectrum` directories for a chapter. For now it's mainly useful for the console arcs since they don't use PS2 voices.

The output files will be available in `temp/voicepack` directory.

Unlike `higurashi:voices` it doesn't make any changes to the scripts. This means that the scripts have to use the correct convention for voice paths for this script to be used. Therefore this command is the one to use long-term while `higurashi:voices` is getting obsolete.

Note: PS2 files are not yet supported. This will have to be implemented later. The problem is that in same cases it might not be possible to copy PS2 voices automatically since they have wrong directory structure and duplicate filenames.

## `higurashi:adv`

TODO: Link to ADV mode update guide

## `higurashi:colors`

This command can be used if to change character name colors for ADV mode when you can no longer rerun the normal compilation.

The colors are set manually in the database. There are two columns for colors - one should be picked form PS3 sprite and the other from MG sprite of the character. The command will calculate the final color from these to get a good compromise.

## `higurashi:combine`

In the MG release of Meakashi there were a lot of cases like this:

```
	OutputLineAll(NULL, "\n", Line_ContinueAfterTyping);
	OutputLineAll(NULL, "\n", Line_ContinueAfterTyping);
```

This script combines such lines to this which is better for ADV mode compilation.

```
	OutputLineAll(NULL, "\n\n", Line_ContinueAfterTyping);
```

## `higurashi:dll-update`

TODO: Link to DLL update guide

## `higurashi:lip-sync`

TODO: Link to LipSync update guide

## `higurashi:insert-names`

I think this was written when we found out that Tatarigoroshi was missing LOT of voices which were PS2-specific. After manually inserting the voices I wrote this to add the character names needed for ADV mode since the normal ADV mode compiler command could not be used again. You'll not need it normally but could be useful sometimes.

## `higurashi:missing`

This command is basically the last thing to use when the patch is complete. It detects missing files (images, voices, sounds). Beware though that it can report some false-positives like missing MG sprites - that's ok for characters who don't have MG sprites.

## `higurashi:normalize`

A `ClearMessage();` command in the script means that a new screen follows. So the last line before it should have `Line_Normal`. Some lines have `Line_WaitForInput` which is fixed by this script.

## `higurashi:parse`

TODO: Link to ADV mode update guide
