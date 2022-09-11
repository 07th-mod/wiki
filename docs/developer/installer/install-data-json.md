# installData.json

This page describes the `installData.json` file used in the installer.

## `identifiers` field

The `identifiers` field is used to make sure the user has selected the right game/right folder before starting the install.

- For `Windows` and `Linux`, it tells the installer what files identify the game
    - For example `HigurashiEp09.x86_64` or `HigurashiEp09.exe` identify Higurashi Rei (which is Episode 9)
- For `MacOS`, it tells the installer what `CFBundleExecutable` value to look for inside a given `.app` bundle
    - **NOTE** for legacy reasons, `_Data` is appended to the name, so `HigurashiEp01` becomes `HigurashiEp01_Data`, and `Higurashi When They Cry Rei` becomes `Higurashi When They Cry Rei_Data`
    - For Chapters 1-8, `CFBundleExecutable` was set to `HigurashiEp0X` where X was the chapter number
    - For Higurashi Rei, `CFBundleExecutable` was set to `Higurashi When They Cry Rei`

### MacOS identifier / `Info.plist` notes

You can rename an `.app` to anything you want, and since the `.app` file is generally considered user facing (e.g. in Windows, you would consider the application install in program files to be not user-facing, but the shortcut to it in the start menu / desktop to be user-facing), we should not make assumptions relating its name to anything specific. Steam installs applications in a windows style (where it hides the real application in steamapps and makes "shortcut" applications for you to stick on the desktop or whatever), but GOG does it the proper macOS way and stuffs everything in the app bundle for you to do whatever you want with. Therefore, we must decide what game an `.app` is by something *inside* of the app bundle.

The `Info.plist`'s `CFBundleExecutable` was chosen to be the identifier, which is the name of the executable file (in `Contents/MacOS`) that is to be executed to launch the app. This is nice because there's exactly one per application, which gives a nice one-to-one mapping of `.app` file → name. Since we're doing a fairly fuzzy search anyways, you could also list the contents of `Contents/MacOS`, which would give you the real executable plus some random other garbage folders that unity uses, but since we have the `Info.plist` there with the exact specification of which thing is the actual name, why not use it?

#### Why is `_Data` appended

Since we use a list of identifiers in the json now, maybe we should remove the + "_Data" that gets appended to CFBundleExecutables, previously there in an attempt to fully unify all names (and add the appropriate executable names to the identifier lists).
