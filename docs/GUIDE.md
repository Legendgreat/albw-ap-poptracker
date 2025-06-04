# Tracker Guide

### Dungeon Prize Explanation

| Name               | Prize                                                    | Effect / Unlocks                                                                             |
| ------------------ | -------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| Gulley             | ![Gulley](/images/prizes/sage_gulley.png)                 |                                                                                              |
| Oren               | ![Oren](/images/prizes/sage_oren.png)                     | - Queen Oren                                                                                 |
| Seres              | ![Seres](/images/prizes/sage_seres.png)                   |                                                                                              |
| Osfala             | ![Osfala](/images/prizes/sage_osfala.png)                 | - Ravio's Sand Rod Slot Item                                                                 |
| Impa               | ![Impa](/images/prizes/sage_impa.png)                     | - Hyrule Castle Throne Room                                                                  |
| Irene              | ![Irene](/images/prizes/sage_irene.png)                   | - Irene                                                                                      |
| Rosso              | ![Rosso](/images/prizes/sage_rosso.png)                   | - Unlocks Rosso's House's front door <br>- Rosso <br>- Rosso Rocks <br>- Rosso's House Crack |
| Pendant of Power   | ![Pendant of Power](/images/prizes/pendant_power.png)     |                                                                                              |
| Pendant of Wisdom  | ![Pendant of Wisdom](/images/prizes/pendant_wisdom.png)   |                                                                                              |
| Pendant of Courage | ![Pendant of Courage](/images/prizes/pendant_courage.png) | - Wildlife Clearing Stump                                                                    |

#### Sage Portraits

Sage Portraits (sometimes called Paintings) are the primary major collectible of the randomizer.

| Gulley                                   | Oren                                 | Seres                                  | Osfala                                   | Impa                                 | Irene                                  | Rosso                                  |
| ---------------------------------------- | ------------------------------------ | -------------------------------------- | ---------------------------------------- | ------------------------------------ | -------------------------------------- | -------------------------------------- |
| ![Gulley](/images/prizes/sage_gulley.png) | ![Oren](/images/prizes/sage_oren.png) | ![Seres](/images/prizes/sage_seres.png) | ![Osfala](/images/prizes/sage_osfala.png) | ![Impa](/images/prizes/sage_impa.png) | ![Irene](/images/prizes/sage_irene.png) | ![Rosso](/images/prizes/sage_rosso.png) |

You can configure how many must be collected with the following settings:

| Setting                                                    | Range | Default | Specifies Requirement For                                                          |
| ---------------------------------------------------------- | ----- | ------- | ---------------------------------------------------------------------------------- |
| ![Lorule Castle Requirement](/images/prizes/sage_zelda.png) | 0-7   | 7       | - Entering Lorule Castle's Front Door <br>- Spawning Final Boss in the Throne Room |

You can set which dungeon holds which sage by right-clicking on the ?? icons under each dungeon. Currently, sage item collection is not implemented, so you still have to click each collection off manually.

#### Pendants of Virtue

The Pendants of Virtue are the secondary major collectible of the randomizer.

The Pendants of Power, Wisdom and Courage are needed to reach the Master Sword Pedestal, which is a single randomized item check.

You can configure the `Pedestal` option to configure which Pendants are needed as follows:

| Pendants                                                                                                                                                           | Name    | Description                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------- | ---------------------------------------------------------------------- |
| ![Pendant of Wisdom](/images/prizes/pendant_wisdom.png)![Pendant of Power](/images/prizes/pendant_power.png)![Pendant of Courage](/images/prizes/pendant_courage.png) | Normal  | Require all Pendants of Virtue.                                        |
| ![Pendant of Wisdom](/images/prizes/pendant_wisdom.png)![Pendant of Power](/images/prizes/pendant_power.png)                                                         | Vanilla | As in the vanilla game, only require the Pendants of Power and Wisdom. |

### Location Color Codes

This tracker follows PopTracker's standard color scheme for its locations:

| Color               | Description                                                                                                                                                             |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `🟩 Normal`         | All sections of this location are reachable with the current equipment and logic settings.                                                                              |
| `🟨 Sequence Break` | All sections of this location are reachable with the current equipment, but at least one section requires a glitch or trick that is outside the current logic settings. |
| `🟦 Inspect`        | The sections of this location are not reachable with the current equipment, but the items they contain can be seen or otherwise discerned.                              |
| `🟥 None`           | No sections of this location are reachable by any means with the current equipment.                                                                                     |
| `⬛ Cleared`        | This location and all of its sections have been marked as cleared by the user.                                                                                          |

- Be aware that `🟨 Sequence Break` locations may contain fully reachable `🟩 Normal` sections inside them.
- Currently, the `🟦 Inspect` locations are of limited value as the randomizer does not replace most freestanding models yet.
- The `🟥 None` and `⬛ Cleared` locations are only visible if `Show All Locations` is enabled (toggle this with `F11`).
- By default, PopTracker uses split coloring, if you wish to use mixed colors, CTRL + P will enable this. Keep in mind it might be a bit confusing based on the colors.
- If you want to hide inaccessible locations, you can do this with F11.

### Logic Modes

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#logic-modes)

The randomizer supports five\* Logic Modes, and so does this tracker. You can select the mode matching your seed in the settings panel in the bottom left of the tracker.

| Mode                                                    | Description                                                                                                                                                                         |
| ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![Normal Logic](/images/settings/Normal.png)             | Standard gameplay, no tricky item use or glitches.                                                                                                                                  |
| ![Hard Logic](/images/settings/Hard.png)                 | Adds tricks that aren't technically glitches.                                                                                                                                       |
| ![Glitched Logic](/images/settings/Glitched.png)         | Includes the above plus "basic", easy-to-learn glitches.                                                                                                                            |
| ![Adv Glitched Logic](/images/settings/Adv_Glitched.png) | Includes the above plus "advanced" glitches that may be a challenge to master.                                                                                                      |
| ![Hell Logic](/images/settings/Hell.png)                 | Includes every known RTA-viable glitch, including the insane ones. Note that the Bee Badge is omitted from the item pool in this mode, to preserve the infamous Bee Boosting trick. |

Raising the Logic Mode to higher difficulties will cause `🟨 Sequence Break` sections to become `🟩 Normal` as they enter logic.

(\*) A sixth Logic Mode, **No Logic**, is also available in the randomizer. Players wishing to tracker their progress while playing without logic should select the **Glitched (Hell)** Logic Mode, which already maximally describes available checks.

### Swordless Mode

![Swordless](/images/items/fsword.png) ![Swordless](/images/items/x_small.png)

Right-click the base Sword item to tell the tracker you're playing in Swordless Mode, which slightly changes the logic:

- The Barrier around Hyrule Castle will be removed, allowing access without the Master Sword.
- Zelda and the Triforce will require the Net to access, even on the Normal Logic Mode.

### Minigames

![Minigames](/images/settings/minigames.png)

You can tell the tracker whether you've Enabled or Disabled Minigames down in the Settings panel. Disabling Minigames will hide their checks on the tracker.

The following checks are hidden when Minigames are Disabled:

- Cucco Minigame
- Hyrule Hotfoot
- Octoball Derby
- Rupee Rush (Hyrule)
- Rupee Rush (Lorule)
- Treacherous Tower

Note that the 2 Maiamai located inside the Rupee Rush minigames will not be hidden.

### Lorule Castle Trials

This setting tells the tracker whether the option to skip the Lorule Castle Trials was selected in the randomizer. This setting slightly alters the logic needed to reach the Final Boss fight, as the player won't need to complete the trials.

### Dark Room Lamp Requirement

This setting determines whether the logic considers the Lamp as a necessary item to cross dark rooms.

If the Lamp is needed, then checks the player would be able to obtain if they crossed a dark room with no light source will appear  
as `🟨 Sequence Breaks`. This is because the setting puts them out of logic, but they are still technically obtainable as the Lamp is not a hard requirement.

Similarly, if the Lamp is not required, then those same checks will appear `🟩 Normal`, as the setting places them in logic, and the seed may require the player to cross a dark room with no light source.

### Display Bee Boost Glitches

![Bee Boost Glitches](/images/display/bottle_bee.png)

Turn this setting on to show `🟨 Sequence Break` checks that require using the Bee Boost glitch.

Checks requiring the Bee Boost glitch are hidden by default given the trick's extreme terribleness.

**Note**: This setting will be ignored if the **Glitched (Hell)** Logic Mode is selected, as they would then be in logic.

### Maiamai Map

![Maiamai Map](/images/display/maiamai_map.png)

This setting toggles the visibility of the Maiamai checks.

### Weather Vanes

![Weather Vanes](/images/display/wv_all.png)

This setting toggles the visibility of Weather Vane checks.

![Weather Vanes Hyrule](/images/display/wv_hyrule.png) ![Weather Vanes Lorule](/images/display/wv_lorule.png)

Left clicking on these will mark them as if you cleared the check on the map, and _enable logic for teleporting_ to them if you have the bell. Vice versa, clearing a check on the map will mark the corresponding weather vane in the item tracker.

Alternatively, you can right click on them to mark them as "visited". This won't do anything logically, but it's handy to keep track of which ones you've checked if you are doing a shuffled Weather Vanes run.

![Keysy Settings](/images/settings/Keysy_off.png)

By left clicking on this, you can enable small keysy. Right click will enable big keysy. Left- _and_ right click will enable both.
