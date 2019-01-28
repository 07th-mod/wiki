Written by [@enumag](https://github.com/enumag/).

How it works
----

In the `dev` directory there are voice catalogue files from PS3 Sui release. The voice inserter first parses these files and creates a map which voice file matches what text. Then it parses the scripts of the MG Higurashi release and tries to match correct voice lines based on the japanese text. The voice line is inserted using the `PlaySE` command (intentionally NOT `PlayVoice` or `ModPlayVoiceLS`). If the script thinks a line should have a voice but can't find it an empty placeholder `PlaySE(4, "", 128, 64);` is inserted.

Known issues:
- Since PS3 text and MG text differs a manual review and fixing is necessary after running this script.
- PS2 specific voices are not automated since we don't have PS2 scripts.

Notes:
- The transition to `PlayVoice` and `ModPlayVoiceLS` commads is done later by other scripts (for dll update and lipsync). Don't worry about it for voice insertion.


Intallation
----

The voice inserter script is written in PHP and you can find it in this [repository](https://github.com/07th-mod/voice-inserter).

To run it you'll need [PHP](http://php.net/) 7.1+ with mbstring and pdomysql modules, [composer](https://getcomposer.org/) to install some libraries and [MySQL](https://www.mysql.com/) database (MariaDB should work too). I also recommend to get a tool like [adminer](https://www.adminer.org/) to browse the database and run commands. When everything is installed check your installation using `php -v` and `composer --version`.

Finally download or `git clone` the [voice inserter](https://github.com/07th-mod/voice-inserter) itself.


Preparation
----

Run `composer install` in the voice inserter root directory (where `composer.json` file is located).

Create a MySQL database and run the `database.sql` file in it. I usually do it using adminer.

Adjust the database connection parameters in `bootstrap.php` to match your database.

Build the voice index using `php load.php`. This will take a few minutes to complete.


Usage
----

When the voice index is ready you can run the script using `php insert.php <path>` where `<path>` is the path there you have the MG scripts for the new chapter. Running this script can take anywhere between 10 minutes and an hour depending on the length of the chapter and performance of your computer.

Beware that this script will change those files so you need to create a backup first. In case the script fails, fix the problem and run it again on the clean files, not those that might have been partially changed by the first attempt.

In some cases the voice inserter will say that it found some "long quotes". This indicates that there is most likely a missing ending quote somewhere in the text which confuses the voice inserter. If this happens, uncomment the `$voiceLine .= "\t// long quote\n";` line in `functions.php`, rerun the voice inserter, find "// long quote" in the updated script to see the location and fix the problem in the original scripts. Then run the voice inserter again on thew fixed files.


Development notes
----

This section is meant for anyone who wants to understand the code and change its behaviour. For normal usage you can skip this.

The main logic is in the `functions.php` file. I'll explain here what each of those function does.

### Functions for `load.php`

#### `loadFile`

Opens a voice catalogue file and calls `saveLine` for each line of the file.

#### `saveLine`

Splits the voice and japanese text and saves the parts to database.

### Functions for `insert.php`

#### `processFile`

Opens a MG script file and passes every line to the `lineProcessor` coroutine.

#### `lineProcessor` coroutine

This is not a normal function but a coroutine implemented using PHP 5.5 [generator](http://php.net/manual/en/language.generators.php) (note the `yield` keyword used in the body).

This couroutine looks for `OutputLine` commands, parses the japanese text from it and uses the `VoiceMatcher` class to find the correct voice.

If a voice is found it inserts the `PlaySE` command in the output script. If a voice is not found but we're inside quites then it presumes there should be a voice and inserts an empty `PlaySE` command as placeholder.

#### `VoiceMatcher` class

This class simply recieves a japanese text line and tries to find a voice for it.

For better results it remembers which voice catalogue file contained the last found line and prefers lines from that file on conflict. This helps to correctly match the voices for commonly used lines.

It tries to find the voice using several different methods to avoid the most common reasons why a line doesn't have a full match. The most complicated one uses the [Levenshtein distance](https://en.wikipedia.org/wiki/Levenshtein_distance) implemented as an SQL function (in `database.sql`).
