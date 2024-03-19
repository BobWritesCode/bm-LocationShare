# [Bob's Mods] Location Share

An easy to implement script to allow players to easily navigate to points of interest.

## Features

- Predetermined POIs can be set up in the config.
- Players can set their own POIs based on their current location.
  - *Example:* `/navset location`.
- Players can then share the POI to others.
  - *Example:* `/navto location`.
- Players can clear route using `/navclear`.
- When a player gets near the POI the route will automatically clear.
- Command names can be easily changed in config.

## Dependencies

- QB-Core

## Worth knowing

- Locations set up by the players (locations not in the config) are reset/removed when the script/server is restarted.

## Usage instructions

Step 1: At your chosen location use the `/navset` command.
![Step 1](https://i.imgur.com/AoBnrct.png)

Step 2 (a): Any player can then use the  `/navto` command to set that location for their GPS.
![Step 2 (a)](https://i.imgur.com/Tsw8BBn.png)

Step 2 (b): The location is set up in the GPS.
![Step 2 (b)](https://i.imgur.com/nS2sDI1.png)

Step 3: When player arrives at location they get a notification and the GPS is automatically removed from their GPS.
![Step 3](https://i.imgur.com/mklvj7g.png)

Other: Use `/navclear` to manually remove the location from the GPS.
![Other](https://i.imgur.com/NEhpufq.png)

## License

    [Bob's Mods] Location Share
    Copyright (C) 2024

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
