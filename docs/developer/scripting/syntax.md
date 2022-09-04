This section includes examples of functions used in the script and their usage.

Note: [this page](https://github.com/07th-mod/higurashi-patch-compiler/wiki/Command-headers-for-game-scripts) might also be useful.

### Code breakdown

**ModDrawCharacterWithFiltering(3, 10, "sprite/normal/iri1_def2_", "1", "right", 1, 160, 0, FALSE, 0, 0, 0, 0, 0, 20, 300, TRUE );**

Draws a character sprite onscreen.  Supports lipsync.

* 3 is the sprite layer
* 10 is the character's voice folder
* "sprite/normal/iri1_def2_" is the sprite image to use minus the last character
* "1" is which sprite to use if lipsync is disabled
* "right" is the mask that controls the fade-in animation
* 160 is the horizontal coordinates to draw the character at
* 20 is the level that characters are drawn at (if they overlap, the one with a lower level is drawn on top of the other)
* 300 is the speed in milliseconds the sprite fades in
* the last FALSE determines if the system should continue before the sprite finishes drawing (setting it to TRUE allows you to have multiple sprites fading in at once)

**DrawFilm( 2, 176, 155, 104, 255, 0, 1000, TRUE );**

Draws a colored filter on top of all sprites and backgrounds onscreen.  Used to tint the screen brown/red/gray/etc.  Need to call FadeFilm() afterwards to remove this.

* 2 is the layer of this film (used in FadeFilm to remove this film later)
* 176, 155, and 104 are the RGB color components of the film (this particular combination brown-tints the screen)
* 255 is the intensity/opacity of the film
* 1000 is the time in milliseconds to draw the film
* TRUE indicates if the process can continue while the film is drawing.

**Negative( 1000, TRUE );**

Inverts the colors onscreen.  Need to call FadeFilm() afterwards to remove this.

* 1000 is the time in milliseconds to draw the negative
* TRUE indicates if the process can continue while the negative is drawing.

**FadeFilm( 500, TRUE );**

Removes the effect of a previous DrawFilm() or Negative() call.

* 1000 is the time in milliseconds to remove the film
* TRUE indicates if the process can continue while the film is fading out.

**ShakeScreen( 1, 15, 15, 2, 0, );**

Shakes the image on screen

* 15, 15 controls how far the image should shake (in pixels?) I think the first one is in the x direction and second is in y
* 2 indicates how many times the screen should shake
