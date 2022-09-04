We have had some issues in the past with windows/unix line endings. This issue should be fixed now when using the new installer, as it automatically converts .bat files to windows line endings. However, if installing manually could still be an issue.

This stackoverflow answer describes how to show the actual stored line endings of a file: [https://stackoverflow.com/a/35204436/848627](https://stackoverflow.com/a/35204436/848627). It uses the Git `ls-files` command.

If you're committing to the `resources` directory and have many files listed as 'changed' even though you didn't change anything, consider deleting the .gitconfig file in your local repository (but don't commit it).
