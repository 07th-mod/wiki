## Uninstalling Custom Steam Art / Steamgrid

There are two ways to remove the custom steam artwork / steamgrid files

=== "Method A - From Within Steam"

    1. Open Steam
    2. Navigate to the game which will have its artwork reset
    3. Right click on the artwork to be reset (eg. the header artwork at the top)
    4. In the right-click menu, click "Clear Custom Background" and "Clear Custom logo"

=== "Method B - Deleting the files (Advanced)"

    1. Navigate to the `..\Steam\userdata\[USER_ID]\config\grid` folder. 
        - There will be a `USER_ID` subfolder (where `USER_ID` is a sequence of numbers) for every user who has logged into steam on your computer
        - You'll need to repeat this for all of the `USER_ID` subfolders, unless you know which one is your personal user folder. The installer currently puts a `grid` folder in *every* `USER_ID` subfolder.
    2. Delete the new-style images and .json files with the corresponding names.
        - We do not recommend deleting the whole folder, as that will clear any custom artwork that you have added yourself in the past.
