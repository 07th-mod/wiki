
## Higurashi Music and Sound Effects Changes / April Update

### What was the April update?

In April 2019, all the Higurashi games received a major update. This update changed the Background Music (BGM) and sound effects (SE). The changes made were:

- Some BGM/SE were replaced with completely different or new BGM/SE
    - In some cases, duplicates replaced existing BGM, resulting in less variation of BGM tracks
- Some BGM/SE are modified or re-recorded versions of the same BGM/SE
- Some BGM had their audio clipping and distortion fixed - but at the same time different sounding instruments or samples may have been used in the new version.
- The game script was modified in some places to play different songs. Since the mod uses it's own script, we are unaffected by this.
- Mangagamer forgot to update the game for some store + chapter combinations (such as GOG's Tsumihoroboshi Ch.6). So just because you downloaded the game recently, it doesn't mean you have the April 2019 update.

For more detailed information:

- We have an google doc which lists the name of every BGM used by our mod:
    - ["Higurashi BGM Filename to Music Name Mapping" spreadsheet](https://docs.google.com/spreadsheets/d/1CzZ6IBOPmDozdatWM2rol1DR2xjIaySSKY5XQV4yhdI/edit?usp=sharing)
    - **Please note this list is automatically generated and might not always be correct**
    - Please read the first sheet to understand the table
- Googling "April Update Higurashi" will give some forum posts with more information

### What options does the mod provide to fix this issue?

We offer the GIN's BGM/SE fixes which bring the BGM/SE closer (but definitely NOT identical to) the original Japanese release and/or Pre April Update - please see the below table. This option was previously called "Original BGM/SE" or "BGM Fix".

You can switch to this BGM/SE using the F10 mod menu, under the 'Audio' tab.

If you want exactly the same BGM/SE as the original Japanese release, we would suggest you play the original Japanese release, as the mod cannot replicate that BGM/SE exactly.

#### Summary of GIN's BGM/SE changes

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight: bold;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
.tg .tg-bold{text-align:left;vertical-align:top;font-weight: bold}
.tg .tg-y6fn{background-color:#c0c0c0;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax"></th>
    <th class="tg-0lax">Question Arcs</th>
    <th class="tg-0lax">Answer Arcs</th>
    <th class="tg-0lax">Rei</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-bold">GIN BGM</td>
    <td class="tg-0lax">BGM files have been replaced with the <strong>pre-april update BGM†</strong>, which is mostly equivalent to the <strong>original Japanese Game</strong>.</td>
    <td class="tg-0lax">BGM files have been replaced with the ones from the <strong>original Japanese game</strong></td>
    <td class="tg-0lax">Differing BGM files have been replaced with the ones from the <strong>original Japanese game.</strong></td>
  </tr>
  <tr>
    <td class="tg-bold">GIN BGM Timing<br></td>
    <td class="tg-y6fn">No Change - will play with Console timings</td>
    <td class="tg-0lax">BGM will play at times matching the <strong>original Japanese Game<strong></td>
    <td class="tg-y6fn">The original Japanese Game and our mod have the same timings, so <strong>no changes necessary.</strong></td>
  </tr>
  <tr>
    <td class="tg-bold">GIN SE</td>
    <td class="tg-0lax" colspan="2">SE have been replaced with the <strong>pre-april update SE</strong></td>
    <td class="tg-0lax">Differing SE files have been replaced with the ones from the <strong>original Japanese game</strong></td>
  </tr>
  <tr>
    <td class="tg-bold">GIN SE Timing</td>
    <td class="tg-y6fn" colspan="2">No Change - will play with Console timings</td>
    <td class="tg-y6fn">The original Japanese Game and our mod have the same timings, so <strong>no changes necessary.</strong></td>
  </tr>
  <tr>
    <td class="tg-bold">Details</td>
    <td class="tg-0lax">† If the BGM or Sound Effect was replaced with an entirely different one, we have reverted it to the pre-april update version<br>
      † If the BGM or Sound Effect suffers from severe audio issues, and the new file is roughly the same minus the issues, we use the new version.</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">For the Rei BGM, only three 'musical' BGM differ - most of the differences are in background ambience or short sound effects</td>
  </tr>
</tbody>
</table>

### Why are the Answer Arcs BGM fixed differently to the Question Arcs?

#### Question Arcs

The Question arcs have been fixed only by file replacement. No Timing changes have been made.

This is because the question arcs BGM changes are less severe, so it was decided it wasn't worthwhile to fix the timing.

For this reason, the question arcs BGM timing does not fully match the original game.

#### Answer Arcs

The Answer arcs have been fixed by both file replacement and adjusting the BGM timing

This is because major changes were found which couldn't be fixed any other way, even though doing so was time consuming

### Why are the Sound Effects taken from the Pre-April Update and not the original JP release?

Currently, the Sound Effects match the Pre-April Update (NOT the original JP release), and the Sound Effect timings have not been updated at all.

The two main reasons it's difficult to fix this are:

- The sound effects are very messy in the game scripts, and would take a long time to fix
- Our mod has changes to match the Console game, which further complicates fixing the SE

For these reasons, we have decided to leave the SE as the Pre-April Update versions.

## List of BGM/SE Oddities

This section explains some unexpected behavior you might encounter when using GIN's BGM/SE.

### GIN BGM/SE Oddities

The "click" sound (`wa_037.ogg`) and the "children laughing sound" (`wa_038.ogg`) are different between the Question and Answer arcs

- The pre-april update unmodded game had this same behavior. Because GIN's BGM/SE copies the SE from the pre-april update unmodded game, it has the same behavior for these two sound effects.

The title screen background sound (sound of cicadas) is different between the Question  and Answer arcs (`lsys11.ogg`/`higurashi.ogg`)

- This is probably because the Question arcs use the pre-april update Mangagamer BGM, while the Answer arcs use the BGM from the original Japanese game.

### How do I check if the unmodded game has the Pre or Post April update BGM

The below checks (as far as we know) will tell you if you have the Pre or Post april update BGM

- For the Unmodded Question Arcs, you have the Post-april update BGM if the file `StreamingAssets/SE/wa_003.ogg` has CRC32 `0F8F4B01` (7zip can calculate CRC32's by right-clicking). Otherwise you have the Pre-April update BGM.
- For the Unmodded Answer Arcs, you have the Post-april update BGM if the file `StreamingAssets/BGM/bellflower.ogg` exists. Otherwise you have the Pre-April update BGM.

The GOG version of Ch.6 Tsumihoroboshi still has the Pre-April Update BGM as of 15/07/20203. This implies they forgot to update the game for some stores (eg. Mangagamer, GOG). So just because you have the latest install of the game, it doesn't mean you have the April Update BGM.

## Other Links

- The [BGM & SE Issues Index](https://github.com/07th-mod/higurashi-patch-compiler/issues/64) lists github issues which related to the BGM and SE.
    - If you're looking for open issues related to BGM/SE, or want to check the history of why something was changed, this might be a good place to start.

## Other BGM options

### Hou+ Demo BGM (Added 2023/06/24)

This option replaces 16 BGM with BGM from the Higurashi Hou+ Demo. It uses the same tracks from nerve as the New MangaGamer BGM, but the AI-D-IA tracks are different.

Some are remastered versions of MangaGamer's replacements, while others were newly composed by xaki.

This option is not available for Chapters 5-8 and Rei because most of their music isn't in the Hou+ demo.

All other tracks will use the New Mangagamer BGM and GIN's/Original SE.

### Remake BGM

This option replaces nine BGM with handmade remakes of nine tracks from the original release (pre-2019).

You can listen to these tracks [on Radiata Alice's "Hinamizawa Syndrome Vol​.​1" BandCamp page](https://radiataalice.bandcamp.com/album/hinamizawa-syndrome-vol-1).

All other tracks will use the GIN's/OG BGM BGM/SE.

The following tracks are replaced:

- Tell a thing (piano solo ver.)
- Snow #3 'First snow'
- Days of Children #3
- Rainy Days
- Fascism
- Sunrise
- Gear
- Theme of Owner
- Dawn

This option is not available for Onikakushi Ch.1, as the chapter does not use any of these tracks.
This option is not available for Chapters 5-8 as an OST remake for those chapters hasn't been created.