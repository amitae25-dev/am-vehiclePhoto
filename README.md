
# Vehicle Photo Generator

Automatically generate PNG images for your vehicle shop without manually photographing each car. Just list the vehicles in the config, and the script handles the rest — fast, efficient, and perfect for clean, consistent shop visuals.




## Installation

1. Download the latest release from github.
2. Unzip and install the script between you server scripts.
3. Make sure to set the permission in your `server.cfg`

```bash
  add_ace group.owner command.startPicture  allow
```

4. Set the save location in `shared/main.lua`
```bash
  AM.SaveLocation = 'resources/[WIP]/am-vehiclePhoto/vehiclePics/'
```
5. Restart the server and enjoy the script.
    
## Requirements

1. [Screenshot Basic](https://github.com/citizenfx/screenshot-basic)
## Usage

1. Fill the `AM.VehicleList` in `shared/main.lua`
2. Set the position in `AM.DefaultSettings` if you want
3. Use the command `/startPicture`
![App Screenshot](https://cdn.discordapp.com/attachments/1257832644851535923/1399789859157315714/image.png?ex=688a4765&is=6888f5e5&hm=5fb3ec69d68ef15188563df2299d50df3baff1efc1b4b386fe76fe270fab414a&)

## Result

The output is png pictures in `vehiclePics/[vehicleName].png`. Every picture is named in a sheme like this: `[vehcleModelName].png`. For example for the car Adder the output should look like this: `adder.png`.
![App Screenshot](https://cdn.discordapp.com/attachments/1257832644851535923/1399789279290331247/image.png?ex=688a46db&is=6888f55b&hm=4999cfd1eb3117464167e6a8910e1aa6b567bc9f8c8879e4ff187b67a0d832cd&)

## Demo

[Watch the video](https://streamable.com/yjaly4)
## Roadmap

- Remove Background API integration 
- Option to send the picture to discord insted of file


## Support

- Discord PM: `amitae_`
- [Discord Server](https://discord.gg/58dqPnyp6P)
- Email: `amitae25@gmail.com`


## Authors

- [Amitae](https://github.com/amitae25-dev)

