Written by [@enumag](https://github.com/enumag) and [@drojf](https://github.com/drojf)

This page is meant for those who are attempting to translate Higurashi to other languages than Japanese and English.

I'm sure you know what to do with scripts so I'll focus on things like UI that are not so easy to translate.

## Localizing UI

**NOTE: This section may be out of date. Please see the [UI Compiler Github Page](https://github.com/07th-mod/ui-editing-scripts) for more up-to-date details, then come back here.**

In the UI some texts are embedded in images, some are not. But everything is in the `sharedassets0.asset` file.

For editing the UI images you will need our [PSDs](https://07th-mod.com/misc/translation_psds.7z) and translate all texts you can find there.

Then you will need to use our [python scripts](https://github.com/07th-mod/ui-editing-scripts) + [UABE](https://7daystodie.com/forums/showthread.php?22675-Unity-Assets-Bundle-Extractor) to change the texts that don't appear in the images and to import everything back into the asset file. This [documentation](https://github.com/07th-mod/ui-editing-scripts) should guide you through the process.

If anything is unclear or doesn't work as expected, ask us on Discord. If you have problem with one of our Python script then provide all the files you're using as input for that script.


## Localizing Tips labels

You can edit the tips json file located in the `HigurashiEp0X_Data\tips.json` folder (a normal install of the mod will already have this file).

Please make sure to keep the exact format of the file, or else it might not load correctly.

## Localizing Mod Menu

This section refers to the Mod Menu (which appears when you press F10), and similar looking UI elements. Please note that if you find some text which you can't translate, it's probably not yet been added to the `localization.json` file - please tell the mod team to fix this.

These texts stored in two places:

### HigurashiEp0X_Data/localization.json

Most mod menu text is stored in the `localization.json`

You can add a `localization.json` file, located at `HigurashiEp0X_Data\localization.json`, to modify many of texts which appear in the mod menu and other places. The mod does NOT include this file by default.

Please copy the `localization.json` from <https://github.com/07th-mod/higurashi-assembly/blob/mod/tools/localization.json>

There is an example entry in the `localization.json` explaining what each field is used for.

If the localization file is missing (which is the case for the normal mod), a message similar to the below will be printed on the output log:

`MODLocalizationController(): No localization file at [C:/Program Files (x86)/Steam/steamapps/common/Higurashi 02 - Watanagashi/HigurashiEp02_Data\localization.json] - will use hardcoded localization`

### HigurashiEp0X_Data/Update/init.txt

Some of the text for the graphics and audio options are stored in the `init.txt` file in the `HigurashiEp0X_Data\Update\init.txt` folder (a normal install of the mod will already have this file).

You should modify the functions `ModAddArtset(...)`, `ModAddBGMset(...)`, and `ModAddAudioset(...)`.
