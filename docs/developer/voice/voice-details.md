> Written by @ItaloKnox

The first step for every patch is to make the voice patch. It all starts from there and branches out into graphics, ADV, and lipsync.


## Patching resources

To make these patches, of course, we need some resources. In the list below you can find the links to every resource available in our project:

* HigurashiPS3 Script: TODO - ask mod team if you need this - Full transcript of every voice in the game. Directly taken from the PS3 script, it's a requirement to use this file while doing manual work. See [Manual work details](https://github.com/07th-mod/resources/releases/download/Nipah/Manual-work-details).
* Higruashi Voices: TODO - ask mod team if you need these

## PlaySE

### Assembly-CSharp.dll code

```csharp
 public void PlaySE(string filename, int channel, float volume, float pan)
 {
     AudioLayer item = this.channelDictionary[this.GetChannelByTypeChannel(AudioType.SE, channel)];
     if (item.IsPlaying())
     {
         item.StopAudio();
     }
     item.PlayAudio(filename, AudioType.SE, volume, false);
 }
```

### Script usage

In the example below, we have an excerpt from ``onik_001.txt``, in the voices-only format:

```
//「...その前に聞きたい＠　あの漬物を漬けたのはレナか＠　レナのお母さんか？＠
	PlaySE( 4, "s19/01/hr_kei00130", 300, 64 );
	OutputLine(NULL, "「…その前に聞きたい。",
		   NULL, "\"...I'd like to ask something before that.", Line_WaitForInput);
	PlaySE( 4, "s19/01/hr_kei00140", 300, 64 );
	OutputLine(NULL, "　あの漬物を漬けたのはレナか？",
		   NULL, " Were you the one who pickled them, Rena?", Line_WaitForInput);
	PlaySE( 4, "s19/01/hr_kei00150", 300, 64 );
	OutputLine(NULL, "　レナのお母さんか？」",
		   NULL, " Or was it your mom?\"", Line_WaitForInput);
	OutputLineAll(NULL, "\n", Line_ContinueAfterTyping);
```

#### Code breakdown

* **PlaySE( 4, "s19/01/hr_kei00130", 300, 64 );**
    * PlaySE(``channel``, "``filename``", ``volume``, ``pan``)
        * ``PlaySE`` calls the "play sound effect" function. It's mainly used for sound effects but can also be used for voices.
        * ``channel`` max value is **8**. It's a good habit to keep it **above __2__**. Voices that plays simultaneously with other voices need to be added one channel above.
        * ``"filename"`` refers to the path where the voice is located. The extension (usually ``*.ogg``) is hidden by default.
        * ``volume`` refers to the voice volume. Max value unknown, ``300`` should be loud.
        * ``pan`` refers to audio panning. You can move the channel from left to right with this. It's never used, the default value is **64**.


## ModPlayVoiceLS

### Assembly-CSharp.dll code

```csharp
		public void MODPlayVoiceLS(string filename, int channel, float volume, int character)
		{
			MODTextController.MODCurrentVoiceLayerDetect = channel;
			AudioLayer audio = this.channelDictionary[this.GetChannelByTypeChannel(AudioType.Voice, channel)];
			if (this.currentAudio[AudioType.Voice].ContainsKey(channel))
			{
				this.currentAudio[AudioType.Voice].Remove(channel);
			}
			this.currentAudio[AudioType.Voice].Add(channel, new AudioInfo(volume, filename));
			if (audio.IsPlaying())
			{
				audio.StopAudio();
			}
			audio.PlayAudio(filename, AudioType.Voice, volume, false);
			if (MODSystem.instance.modSceneController.MODLipSyncBoolCheck(character))
			{
				GameSystem.Instance.SceneController.MODLipSyncStart(character, channel, filename);
			}
			if (GameSystem.Instance.IsAuto)
			{
				audio.OnLoadCallback(delegate
				{
					GameSystem.Instance.AddWait(new Wait(audio.GetRemainingPlayTime(), WaitTypes.WaitForVoice, null));
				});
			}
		}
```

### Script usage

In newer patches, however, the code is fully processed to be ready for features such as the lipsync and ADV. Because of that (see [Assembly-CSharp.dll](https://github.com/07th-mod/higurashi-dev-guides/wiki/assembly-csharp.dll)), the syntax requires a new function called ``ModPlayVoiceLS``. It also comes with a new structure:

```
//「...その前に聞きたい＠　あの漬物を漬けたのはレナか＠　レナのお母さんか？＠
	if (GetGlobalFlag(GADVMode)) { OutputLine("<color=#956f6e>圭一</color>", NULL, "<color=#956f6e>Keiichi</color>", NULL, Line_ContinueAfterTyping); }
	ModPlayVoiceLS(3, 1, "s19/01/hr_kei00130", 256, TRUE);
	OutputLine(NULL, "「…その前に聞きたい。",
		   NULL, "\"...I'd like to ask something before that.", Line_WaitForInput);
	ModPlayVoiceLS(3, 1, "s19/01/hr_kei00140", 256, TRUE);
	OutputLine(NULL, "　あの漬物を漬けたのはレナか？",
		   NULL, " Were you the one who pickled them, Rena?", Line_WaitForInput);
	ModPlayVoiceLS(3, 1, "s19/01/hr_kei00150", 256, TRUE);
	OutputLine(NULL, "　レナのお母さんか？」",
		   NULL, " Or was it your mom?\"", GetGlobalFlag(GLinemodeSp));
	if (GetGlobalFlag(GADVMode)) { ClearMessage(); } else { OutputLineAll(NULL, "\n", Line_ContinueAfterTyping); }
```

#### Code breakdown

* **ModPlayVoiceLS(3, 1, "s19/01/hr_kei00130", 256, TRUE);**
    * ModPlayVoiceLS(``channel``, ``character``, "``filename``", ``volume``, ``TRUE/FALSE``);
        * ``ModPlayVoiceLS`` calls the new "Mod Play Voice LipSync" function. It's a newer version independent of ``PlaySE`` that was previously used to play voices.
        * ``channel`` max value is **8**. It's a good habit to keep it **above 2**. Voices that plays simultaneously with other voices need to be added one channel above.
        * ``character`` is the folder where the sprites for the character will be loaded. In the example, the voice is ``s19/01/hr_kei00130``, so ``01`` is also the character folder for sprites.
        * ``"filename"`` refers to the path where the voice is located. The extension (usually ``*.ogg``) is hidden by default.
        * ``volume`` refers to the voice volume. Max value unknown, ``256`` should be loud.
        * ``TRUE/FALSE`` turns on or off the lipsync feature for that specific voice. It's recommended to leave this option always on ``TRUE``.

It is good to remember that the code snippet above does not only include syntax for the voices and lipsync, it also includes syntax for the ADV Mode. Check out [ADV Mode](https://github.com/07th-mod/higurashi-dev-guides/wiki/ADV-Mode) for more information.

## ModDrawCharacterWithFiltering

### Assembly-CSharp.dll code

```csharp
	<pending>
```

### Script usage

```
ModDrawCharacterWithFiltering(3, 10, "sprite/normal/iri1_def2_", "1", "right", 1, 160, 0, FALSE, 0, 0, 0, 0, 0, 20, 300, TRUE );
```

#### Code breakdown

* **ModDrawCharacterWithFiltering(3, 10, "sprite/normal/iri1_def2_", "1", "right", 1, 160, 0, FALSE, 0, 0, 0, 0, 0, 20, 300, TRUE );**
    * ModDrawCharacterWithFiltering(``sprite layer``, ``voice folder``, "``sprite image``", ``static sprite``, ``fade-in mask``, ``?``, ``horizontal``, ``?``, ``?``, ``?``, ``?``, ``?``, ``?``, ``?``, ``level``, ``fade-in``, ``parallel``);
        * ``ModDrawCharacterWithFiltering`` calls a function for drawing a character with a fade-in.
        * ``sprite layer`` Numerical.
        * ``voice folder`` is the folder where the voices for the character will be loaded.
        * ``sprite image`` refers to the path of the sprite image to use minus the last character(e.g. "sprite/normal/iri1def2")
        * ``static sprite`` which sprite to use if lipsync is disabled.
        * ``fade-in mask`` the mask that controls the fade-in animation.
        * ``horizontal`` horizontal coordinates to draw the character at.
        * ``level`` the level that characters are drawn at (if they overlap, the one with a lower level is drawn on top of the other).
        * ``fade-in`` the speed in milliseconds the sprite fades in.
        * ``parallel`` determines if the system should continue before the sprite finishes drawing (setting it to TRUE allows you to have multiple sprites fading in at once).

This page continues on [Automated voice inserter](automated-voice-inserter.md).
