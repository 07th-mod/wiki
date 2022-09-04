# Introduction

The goal of this page is to describe the proceedings by which the scripts can be edited to make it flow seamlessly.
After reading everything and experiencing a bit, you should be able to write scripts to play entire scenes properly from scratch.

## Indentation / Whitespace

Please pay attention to tabs/spaces in the script. **Every line with a function call must start with at least one tab character**. If you use spaces accidentally at the very start of a line, the engine will just display the raw code on the screen and skip the function call.

Configuring your text editor to show whitespace and/or enabling tabs for spaces may help you diagnose this kind of issue.

## Syntax Highlighting

Since the script language is similar to C/C++, you can enable C/C++ syntax highlighting in your text editor to get some basic highlighting.

For Visual Studio Code users, we have a highlighter specifically for Higurashi scripts that can be downloaded from our [script-syntax-highlighters](https://github.com/07th-mod/script-syntax-highlighters/releases) repository (see the README.md on the repo for install instructions). It will highlight some keywords specific to the Higurashi scripting language. However, please note that it may not always be correct, so don't rely on it 100% for detecting syntax errors.

## Understanding The Script

To start off, glancing at a random part of a script will probably look like occult scrawlings with some bits here and there that make some sense, but will come a time where you will be able to discern and understand every single part.

Because every single line of the script has a meaning, you'll be able to see the superfluous lines that can be removed without affecting(or doing so in a good way) the script. Each additional line takes memory or sequencing time, so trimming down the process usage is important.

A lot of it relies on learning what each part does, by reading documentation, but also by actually seeing the effects directly, so that you become able to associate the methods and the results, to a point where reading the script is enough to visualize it playing out.

Experiencing the effects is an important part to then foresee what the line you're removing or adding will change in the outcome. Especially because there might be some engine-specific changes that might need an adjustment in the scripts from one chapter to the other.

I recommend reading through the script while playing the corresponding scene on the game at the same time, and maybe even try to guess how it should pay out then see how it actually takes place to understand the little things you had missed.

Here is a scene from Onikakushi to better understand:

```c++
	if (GetGlobalFlag(GADVMode)) { OutputLineAll("", NULL, Line_ContinueAfterTyping); }

	OutputLine(NULL, "　今日はレナと魅音に雛見沢をいろいろと案内してもらう日だ。",
		   NULL, "Today was the day Rena and Mion were going to show me around Hinamizawa.", Line_Normal);

	ClearMessage();
```

This here is going to be the most common lines you'll see in the script, I call that a 'text bulk' because it always come as one part.

The first line is the 'header' and will fill the nametag in ADV mode, here it's empty because it's not a spoken line and thus requires an empty name. The last parameter means that it will instantly continue to the next method after being written.

Next is the actual line of text that will be written in the textbox(with the 2 languages), followed at the end by the parameter that determines what happens while writing it. Here it will wait for an input after it has finished writing, then will erase all text from the textbox.

And finally, the last small method line is for the backlog, it will clear everything that's been written since the last cleaning(and the current written text if any), and add it to the log so that you are able to read back if you went too fast or else.

This is the most basic version of 'text bulks' but you'll get to see many variations.

```c++
	DisableWindow();

	PlayBGM( 1, "msys01", 128, 0 );

	ModDrawCharacter(1, 3, "sprite/normal/me2_def_a1_", "0", -160, 0, 0, FALSE, 0, 0, 0, 0, 0, 0, 0, 0, 0, FALSE );

	ModDrawCharacter(3, 2, "sprite/normal/re2a_def_a1_", "0", 160, 0, 0, FALSE, 0, 0, 0, 0, 0, 0, 0, 20, 0, FALSE );

	DrawSceneWithMask("background/ie1", "left", 0, 0, 1300 );
```

Now, the script is going to do a transition scene. First off, as for most of the effects outside of sounds and musics, to avoid dividing the attention, you will want to remove the now 'useless' textbox with DisableWindow();(which is being drawn back whenever you write text, so it's only temporary).

Then, a music will start being played, and you'll see some magic at work while the new background is drawn from left to right with both character sprites. 

Normally, you'd think the sprites to be drawn first, but because of the last parameter being put to FALSE, the sprites 'pass priority' and have the last method keeping priority having everything happen at the same time, and that's how the character sprites are not being erased by the DrawScene happening afterwards.

There is a number of other parameters that should be researched and learnt about by looking around the wiki and seeing the effects.

```c++
	if (GetGlobalFlag(GADVMode)) { OutputLineAll("", NULL, Line_ContinueAfterTyping); }

	OutputLine(NULL, "　待ち合わせ場所ではすでにレナと魅音が待っていた。",
		   NULL, "Rena and Mion were already waiting at the meeting place.", Line_Normal);

	ClearMessage();

	DisableWindow();

	ModDrawCharacter(1, 3, "sprite/normal/me2_tokui_a1_", "1", -160, 0, 0, FALSE, 0, 0, 0, 0, 0, 0, 0, 0, 200, TRUE );
```

Another simple line followed by a facial expression change, done by drawing the character sprite on top of itself; by keeping most of the parameters the same, it will looks as if only the face changes. 

Note that this time, the priority is kept so that the character is fully drawn before continuing.

```c++
	if (GetGlobalFlag(GADVMode)) { OutputLine("<color=#5ec69a>魅音</color>", NULL, "<color=#5ec69a>Mion</color>", NULL, Line_ContinueAfterTyping); }

	ModPlayVoiceLS(3, 3, "ps3/s19/03/990300077", 256, TRUE);

	OutputLine(NULL, "「圭ちゃん、遅いぞー！」",
		   NULL, "\"Kei-chan, you're late!\"", GetGlobalFlag(GLinemodeSp));

	if (GetGlobalFlag(GADVMode)) { ClearMessage(); } else { OutputLineAll(NULL, "\n", Line_ContinueAfterTyping); }
```

Ending with a spoken sentence, this time, the 'header' line will write the name(with a color tag proper to Mion), then start playing the voice file before writing the sentence. 

That way, you will have the text and voice playing at the same time(because ModPlayVoiceLS doesn't hold priority).

And for the last bit, it will act the same if you are in ADV mode, but in NVL mode, it won't clean the text and only skip a line, creating a wall of text because there is more space than with the little textbox of ADV mode.

Now that I explained most of it, this is what it looks like in action:

https://www.youtube.com/watch?v=gDOm4B5PYoY

As you will have perhaps noticed, there was already a bgm playing and a scene drawn. That is because you need to always remember there is a continuity in the scripts and to be aware of it.

## Sequencing Properly

And this is where the next point will lead us. It is important to understand that to make a scene, you have a good number of factors to take into consideration, and how each of the components are handled.

The timing is also important, as you won't be able to make everything jump out; you need a proper entrance to it, but also a proper exit. Let's say for example, I want to have a music start playing and replace the current one, I'd have to make it fade out while playing the other on another channel, to have an incremental change as the old music fades out and the new starts, without a brutal cut.

And unless it is for a specific usage, this applies to everything else. It is important to make it fluid so that you won't have a coldwater splash of "Wait, this happened weirdly!" that, well, isn't needed when you're trying to enjoy the story.

Now we'll be looking at trying to build a simple waking up scene. We'll be considering that nothing happens beforehand but we'll still clean the text and musics in case, and then we'll start with slowly drawing a white scene while a bgm plays during the transition to 'introduce' the actual scene in case of remaining sprites or scenes, once that's done, we can draw the real scene and finish up by playing another bgm in addition to the first to make the sound ambience as the text starts.

```c++
	FadeOutBGM( 0, 0, FALSE );
	FadeOutBGM( 1, 0, FALSE );
	FadeOutBGM( 2, 0, FALSE );
	ClearMessage();

	PlayBGM( 2, "lsys22", 128, 0 );
	DrawScene("white", 3000 );
	DrawSceneWithMask("background/ma_j3_01", "m1", 0, 0, 3000 );
	PlayBGM( 1, "msys06", 128, 0 );

	if (GetGlobalFlag(GADVMode)) { OutputLineAll("", NULL, Line_ContinueAfterTyping); }
	OutputLine(NULL, "　倦怠感と頭痛。",
		   NULL, "Weariness and a headache.", GetGlobalFlag(GLinemodeSp));
	if (GetGlobalFlag(GADVMode)) { ClearMessage(); } else { OutputLineAll(NULL, "\n", Line_ContinueAfterTyping); }
```

The high time to draw the scenes is important to give the feeling of waking up while hearing bird chirps, and you'll notice that it's these small things that are important to give a feeling of immersion as you go.

There is many more things you can do in that regard, like shaking the screen while playing a loud sound to simulate a hit or as simple as drawing a facial expression to show the change in tone of a character.

By using the various tools at disposition and a little touch of creativity, you can make an impressive variety of effects to create quite immersive scenes.

## What To Watch Out For

But there are still points to keep in mind to avoid falling into traps and have unexpected results. In the many examples I could give, there is to never forget when you start a bgm, to fade it out. Despite the safeguards, it's still better to not let a track when it's supposed to be over.

Another point is the priority, where some methods can be used simultaneously, but others can't, and some only with specific ones. Most of the draw with filter hog priority and forbid to have higher priority events happening at the same time(you can't draw with filter and a new scene, for example, or several filter draws). Which is why it's important to keep in mind what is prioritized over what when sequencing.

Do not forget to disable the text box when doing effects, to focus the attention. Don't use the same layer priority for different characters or they'll trample over the sprites. Some methods can pass priority, others hog it. Try to avoid having any timing at 0 because it creates too harsh a cut, prefer using 100 or 50 for very fast changes, or the more global 300.

Also, different chapters have different engines(the biggest gap being question arcs/answer arcs) and there can be several changes in how they're handled. In answer arcs, drawing a scene will now automatically disable the textbox, so adding it is not needed for it.

The way priority is handled is also slightly different in that several related methods can trample over and create annoying issues if they're not separated by a 'high priority' method. For example having a fadeout and a play bgm methods in the same 'priority line'(not cut by a hogging priority method) will prevent the play bgm to act, no matter how much methods you add in between(creating the well known music bug).

It also acts weirdly with sprite drawing, where several drawing can become ported over to the next scene drawing or after a new outputline, even if you try to keep priority(I've had to try many workarounds as it's very annoying, and one of the most efficient if possible is to redraw the scene with the new expression, and/or change the layer of the new sprite).

In the end it'll rely mostly on the feel, the flow and testing it out, but hopefully all this'll help making it easier to start out.

## Commonly Used Tools

Finally I'll describe some of the most commonly used tools I use to make editing easier:

```c++
	DrawBustshot(5, "black", 0, 0, 0, FALSE, 0, 0, 0, 0, 0, 0, 0, 25, 500, TRUE );
```

This is a convenient tool if you need to draw effects, or to not have to change a scene. It's the main way to make multi layered effects. Though note that it's not used to draw character sprites. It has weak priority and can be added in a priority line. Note that there is a DrawSprite variant that is more prioritizing, and is able to change some things like the orientation, to be used in more technical scenes. But don't forget to avoid drawing it using a layer that is already used.

```c++
	FadeOutBGM( 0, 300, FALSE );
```

It's pretty straightforward, but still requires some attention. Whenever you start a bgm, you'll have to add a fade-out for it, and depending on where it has to stop, you will change the timing to make it blend with other transitions. Weak priority and rarely used alone.

```c++
	OutputLineAll(NULL, "", Line_WaitForInput);
```

It's mostlly used to write text, but it can be used to create pauses between effects, or if you want an effect to take place after a sentence but not continue afterwards.

```c++
	Wait( 2000 );
```

The backbone of every effect, despite being able to increase timing on a majority of methods, you'll be using this one very frequently to create delays and pauses, it structures a lot of sequencing and doesn't hold priority.

```c++
	DrawScene("black", 500 );
```

Often you'll have to change the background for scene, and this one is quite useful, but there's a few things to note. First, it's very priority hogging, it's usually what supports a priority line and you can add sprites to be drawn with it that way. It also disables the textbox(only answer arcs, don't forget to do it in question arcs) and most importantly, it cleans up the 'scene' by removing sprites and bustshots.
