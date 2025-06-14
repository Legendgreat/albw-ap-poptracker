# A Link Between Worlds Autotracker

This is a [PopTracker](https://poptracker.github.io/) pack meant for tracking items and checks in The Legend of Zelda: A Link Between Worlds Randomizer runs.

## Version History

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#version_history)

### 1.3.1

### Bug Fixes

- All cracks should now be in logic in cracksanity, with merge and quake, and some of the checks were updated for cracksanity as well.
- Hylian Shield AP item should now properly increment the shield item by two stages
- Blacksmith check should now work properly

<details>

<summary>1.3.0</summary>

### 1.3.0

### Layout

- This update has a fresh new item layout, that looks a bit cleaner than the previous versions. Because of the new item layout, and some weird issues with resizing the window, I had to separate the vertical layout from the standard map tracker, so it's now in it's own tracker variant.
- I have also reintroduced the item tracker, which is now fully functional, including auto-tracking. Same as the map tracker, weather vanes have to be clicked, but dungeon items are auto-tracked.

### Bug Fixes

- Premium Milk and Letter in a Bottle are now both trackable properly. I have made it in a way where you can click either milk or letter, since you aren't able to get both in any given run. (According to RickWithAnH)
- Thief Girl check is now properly available when having Thieves' Hideout reward item checked (Have to set it to Sage or Pendant, ?? doesn't work)
- Mother Maiamai checks are now disabled instead of cleared, when nice items are set to shuffled or off (From my experience they are always junked, let me know if I'm wrong)
- Death Mountain Maiamai should now appear in front of other checks too

### Improvements

- Based on some feedback from the Archipelago Discord, future versions will have a more descriptive .zip file name, and I will be excluding the .git folder
- Removed most of the unnecessary files and images, bringing the final size of the .zip down to 20% of what it was before
- Did some minor housekeeping of the code

### Remaining issues

- When diamond shape (Maiamai) locations overlap with square shaped ones, the square shape takes prevalence for the mouse hover. [Black Sliver](https://github.com/black-sliver/) is going to fix this in a future PopTracker update. _This is slated to be in the next release of PopTracker._

### What's next

I'm thinking of adding in a crack tracker, right now the tracker only supports marking the tracker you went in to, and for cracksanity, the crack you come out of. I want to add a fully functional crack tracker where you can mark which crack leads where, with maybe an additional map where lines are drawn between pairs, or hovering one highlights another. I'm not sure if PopTracker supports this yet, but I'll see what I can do with the tools that I have.

</details>

<details>

<summary>1.2.1</summary>

### 1.2.1

- Quake is now tracked if found manually (not initial_crack_state)
- Open trials door should now be tracked
- Swordless mode is now tracked

</details>

<details>

<summary>1.2.0</summary>

### 1.2.0

### Auto-tracked Settings

Settings from player .yaml's are now mostly auto-tracked. In a future update I will add a way to disable it if a lot of people ask for it.

Not everything _can_ be auto-tracked:

- `super_items`
- `assured_weapon`
- `skip_big_bomb_flower`
- `bow_of_light_in_castle`
- `treacherous_tower_floors`
- `keysy`

Luckily, most of these aren't important to track, except for keysy, which will still need to be manually clicked.

### Bug Fixes

- Some checks were previously showing green when they should've been yellow or even red. Most of these were checks related to lamp in Dark and Swamp Palace, but also some logic related ones in Eastern Palace and House of Gales. All locations should now be showing the proper logic.
- The Maiamai locations in Hyrule Rupee Rush and Lorule Dark Ruins South Wall are now in the proper spot

### Remaining issues

- Some Maiamai's in Death Mountain are still visually behind other locations, this will be fixed in a smaller update.

I will probably focus on the vertical layout of the Standard Tracker next.

</details>

<details>

<summary>Older versions</summary>

<details>

<summary>1.1.x</summary>

<details>

<summary>1.1.2</summary>

### 1.1.2

- Fixed the versions_url link in manifest.json for automatic updates

</details>

<details>

<summary>1.1.1</summary>

### 1.1.1

### Bug Fixes

- Master Ore is now auto-tracked properly
- Hyrule Castle checks are now auto-tracked properly
- Changed the Mother Maiamai location on Hyrule Overworld map temporarily, until the diamond shape hover issue is fixed in PopTracker
- Death Mountain Maiamai locations are now diamond shaped too

### Improvements

- Added automatic pack update notifications

### Remaining issues

- When diamond shape (Maiamai) locations overlap with square shaped ones, the square shape takes prevalence for the mouse hover. [Black Sliver](https://github.com/black-sliver/) is going to fix this in a future PopTracker update.

</details>

<details>

<summary>1.1.0</summary>

### 1.1.0

### Bug Fixes

- Tracker should now display properly on resolutions below 1440p
- Lorule Castle small keys are now auto-tracked properly
- Osfala rented item is now tracked properly

### Improvements

- All locations are a bit smaller so it's easier to look at
- Maiamai checks are now diamond shaped so they're easier to distinguish from item checks, they also appear in front instead of behind other checks
- Dungeon map images are now combined, and have a floor label
- Bottle for trade quest is now 1 combined letter/milk bottle based on information from RickWithAnH, and should alleviate some confusion around how it's randomized
- Rainbow sage and rainbow pendant is removed from the dungeon prize tracker, and all pendants are now in there
- Sages in every dungeon's prize tracker now have numbers next to them to make them easier to distinguish when they are still greyed out (1 = gulley, 2 = oren, etc.)
- Added a Go! Mode tracker in the Lorule Castle key tracker, where there was previously nothing. May or may not work, untested.

### Remaining issues

- Due to refactor of the dungeon locations, sages and pendants are not properly displayed in dungeons, but still work when toggled in the dungeon item tracker in the bottom dock

If dungeon location checks don't match up with where they should, please let me know. I made sure to test this time but there's a chance I missed something.

</details>

</details>

<details>

<summary>1.0.x</summary>

- 1.0.4
  - slightly adjusted layout, added individual sage portraits to the progression, and added guide to README.md
- 1.0.3
  - Desert Palace had some weird bugs left, fixed now.
- 1.0.2
  - Dungeon tracking should be fixed
- 1.0.1
  - Working autotracking for all locations, items, and dungeon items.
    Sadly no sages/pendants, or events such as bumping into shady guy until apworld has location codes for those.
- 1.0.0
  - Initial Release
  - Changes from arborelia's version include refactoring of the location files, adding proper tracking for locations, tracking dungeon keys and items, and minor adjustments to the layouts, as well as merging it with the latest version of RickWithAnH's tracker.

</details>

</details>

## Description

Doing my own runs I noticed a lack of an up-to-date autotracker for this game. This pack is heavily based on [ALBW PopTracker](https://github.com/arborelia/albw-poptracker/tree/main) made by arborelia, and [ALBW Randomizer Tracker] made by RickWithAnH. The last update to arborelia's pack was a while ago when I started this pack, and not everything was working. So I decided to continue their work. Having noticed the recent uptick in ALBW players on Archipelago's Discord, I decided to share my work.

That said, please share any issues with the pack you might come across. If you do, please make an issue on the GitHub repo.

The tracker's logic is based on [z17-randomizer](https://github.com/rickfay/z17-randomizer) made by RickWithAnH.

## Getting Started

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#getting-started)

### Dependencies

- [PopTracker](https://poptracker.github.io/)

### Installing

- Simply drop the .zip file in the packs folder in PopTracker.

## Usage Guide

### Untrackable Items and Locations

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#untrackable-items-and-locations)

Not all locations are randomized, and thus not auto-trackable. See [Untrackable Items and Locations](https://github.com/Legendgreat/albw-ap-poptracker/blob/main/docs/UNTRACKABLE.md) for a list of untrackable items and locations.

### Tracker Guide

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#tracker-guide)

See the [Tracker Guide](https://github.com/Legendgreat/albw-ap-poptracker/blob/main/docs/GUIDE.md) for info about the tracker itself, and logic surrounding various settings, sages and pendants.

### Hot Keys

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#hot-keys)

You can use these in any PopTracker package, including this one.

| Hotkey    | Alternative      | Function                                                                                                         |
| --------- | ---------------- | ---------------------------------------------------------------------------------------------------------------- |
| F1        | n/a              | Show this document.                                                                                              |
| F2        | n/a              | Open broadcast window.                                                                                           |
| F5        | Ctrl + R         | Reload: if the pack did not change, loads an empty state (everything unchecked), otherwise same as force-reload. |
| Ctrl + F5 | Ctrl + Shift + R | Force-reload: reload the pack from disk.                                                                         |
| F11       | Ctrl + H         | Toggle visibility of cleared and inaccessible map locations.                                                     |
| Ctrl + P  | n/a              | Toggle between mixed and split colors for map locations.                                                         |

## Help

If you need any help, I'm usually over on the [Archipelago Discord](https://discord.gg/8Z65BR2), and on the [Poptracker Discord](https://discord.com/invite/gwThqMCPgK), you can @Legend there and I will respond to help with any issues around the pack.

For any issues regarding the randomizer in general, check out [randomsalience's albw-archipelago GitHub page](https://github.com/randomsalience/albw-archipelago).

## Authors

Author: [Legend](https://github.com/Legendgreat)

Discord: legendgreat

## License

This project is licensed under the GNU General Public License v3.0.

## Acknowledgments

- [arborelia](https://github.com/arborelia)
- [RickWithAnH](https://github.com/rickfay)
- [black-sliver](https://github.com/black-sliver)
- ['Unofficial' PopTracker Discord](https://discord.com/invite/gwThqMCPgK)
