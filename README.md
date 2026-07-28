# MyStackSizeMod

A lightweight Factorio mod that adjusts item stack sizes and the exoskeleton movement bonus during the data stage.

## Features
- Changes the stack size of several items.
- Adds a startup setting for the exoskeleton movement bonus.
- Organizes settings into two groups in the Mod Settings UI:
  - Stack size
  - Movement

## Default values
- Coal stack size: 200
- Stone stack size: 200
- Wood stack size: 200
- Promethium Asteroid Chunk stack size: 2
- Exoskeleton movement bonus: 0.3

## Settings
### Stack size
- `stackmod-stacksize-coal`
- `stackmod-stacksize-stone`
- `stackmod-stacksize-wood`
- `stackmod-stacksize-promethium-asteroid-chunk`

### Movement
- `stackmod-movement-bonus`
<img width="565" height="494" alt="image" src="https://github.com/user-attachments/assets/e40b3ae6-da7b-425b-8f40-fedeb5b96098" />


## Installation
1. Copy this mod folder into your Factorio mods directory.
2. Enable the mod in the Mods menu.
3. Open the Startup settings and adjust the values you want.
4. Restart the game or start a new game for the changes to take effect.

## Notes
- Startup settings require a restart or a new game to apply.
- The default movement bonus is `0.3`.
- The setting names and descriptions are defined in `locale/en/mod-settings.cfg`.

## Customization
- To change the default stack sizes, edit `settings.lua`.
- To change the default movement bonus, edit the `stackmod-movement-bonus` setting in `settings.lua`.
