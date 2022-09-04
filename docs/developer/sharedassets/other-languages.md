Written by [@enumag](https://github.com/enumag).

This page is meant for those who are attempting to translate Higurashi to other languages than Japanese and English.

I'm sure you know what to do with scripts so I'll focus on things like UI that are not so easy to translate.

UI changes
----

In the UI some texts are embedded in images, some are not. But everything is in the `sharedassets0.asset` file.

For editing the UI images you will need our [PSDs](https://07th-mod.com/misc/translation_psds.7z) and translate all texts you can find there.

Then you will need to use our [python scripts](https://github.com/07th-mod/ui-editing-scripts) + [UABE](https://7daystodie.com/forums/showthread.php?22675-Unity-Assets-Bundle-Extractor) to change the texts that don't appear in the images and to import everything back into the asset file. This [documentation](https://github.com/07th-mod/higurashi-dev-guides/wiki/UI-editing-scripts) should guide you through the process.

If anything is unclear or doesn't work as expected, ask us on Discord. If you have problem with one of our Python script then provide all the files you're using as input for that script.


Tips labels
----

These are currently hardcoded in the DLL and you can change them using DNSpy. We're working on moving them to a separate json file. By the time you read this page this feature might already be implemented, ask us on Discord.
