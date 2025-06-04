# A Link Between Worlds Autotracker

This is a [PopTracker](https://poptracker.github.io/) pack meant for tracking items and checks in The Legend of Zelda: A Link Between Worlds Randomizer runs.

## Version History

[](https://github.com/Legendgreat/albw-ap-poptracker/tree/master#version_history)

<details open>

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

<summary>1.1.2</summary>

### 1.1.2

- Fixed the versions_url link in manifest.json for automatic updates

</details>

<details open>

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

### 1.0.x

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
