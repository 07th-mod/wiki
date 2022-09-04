# Patch folder structure

> Written by @ItaloKnox

To make the installation as simple as possible, we can take advantage of nested folders to cut down the installation steps and greatly reduce the number of actions the installer requires to take. In the section below, you can see all the nested folders currently used in our patch. **It is greatly recommended to follow the example to the letter.**

## Nested folders

> HigurashiEp0``*``_data, where ``*`` is the chapter number. For example, Onikakushi = 1, Meakashi = 5.

- *-CGAlt.7z
    - ``HigurashiEp0*_data/StreamingAssets/CGAlt``

- *-CG.7z
    - ``HigurashiEp0*_data/StreamingAssets/CG``
- *-Voices.7z
    - ``HigurashiEp0*_data/StreamingAssets/voice``
    - ``HigurashiEp0*_data/StreamingAssets/spectrum``
- ``CHAPTER TITLE``.Voice.and.Graphics.Patch.*\.zip
    - ``HigurashiEp0*_data/Managed``
    - ``HigurashiEp0*_data/Plugins``
    - ``HigurashiEp0*_data/StreamingAssets``
- *-UI.7z
    - ``HigurashiEp0*_data/sharedassets0.assets``
    - ``HigurashiEp0*_data/sharedassets0.assets.resS`` (from Chapter 3 - Tatarigoroshi onward)
- *-Movie.7z
    - ``HigurashiEp0*_data/StreamingAssets/movies``

In **ConsoleArcs** only:

- *-BGM.7z
    - ``HigurashiEp04_data/StreamingAssets/BGM``
- *-SE.7z
    - ``HigurashiEp04_data/StreamingAssets/SE``
