# redemrp_planting script!

## 1. Requirements

[redem-roleplay](https://github.com/RedEM-RP/redem_roleplay/)

[redemrp_notification](https://github.com/Ktos93/redemrp_notification/)

[redemrp_inventory](https://github.com/RedEM-RP/redemrp_inventory)

## 2. Installation
- Add ```ensure redemrp_planting``` in server.cfg

## 3. Configuration
- Add this in your [redemrp_inventory](https://github.com/RedEM-RP/redemrp_inventory) Config.lua file
```
	["cornseed"] =
    {
        label = "Cornseed",
        description = "Seed of the corn",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/cornseed.png",
        type = "item_standard",


    },

	["carrotseed"] =
    {
        label = "Carrot Seed",
        description = "A seed for carrots",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/carrotseed.png",
        type = "item_standard",

    },

	["cottonseed"] =
    {
        label = "Cotton Seed",
        description = "A seed for cotton",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/cottonseed.png",
        type = "item_standard",

    },

	["wheatseed"] =
    {
        label = "Wheat Seed",
        description = "A seed for wheat",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/wheatseed.png",
        type = "item_standard",

    },

	["broccoliseed"] =
    {
        label = "Broccoli Seed",
        description = "A seed for broccoli",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/broccoliseed.png",
        type = "item_standard",

    },

	["lettuceseed"] =
    {
        label = "Lettuce Seed",
        description = "A seed for lettuce",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/lettuceseed.png",
        type = "item_standard",

    },

	["cotton"] =
    {
        label = "Cotton",
        description = "All good business starts with cotton",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = false,
        requireLvl = 0,
        limit = 100,
        imgsrc = "items/cotton.png",
        type = "item_standard",

    },

	["wheat"] =
    {
        label = "Wheat",
        description = "A bakers delight",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = false,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/wheat.png",
        type = "item_standard",

    },

	["broccoli"] =
    {
        label = "Broccoli",
        description = "Kids hate it, you love it.",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/broccoli.png",
        type = "item_standard",

    },

	["lettuce"] =
    {
        label = "Lettuce",
        description = "Infested with bugs, but still edible",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/lettuce.png",
        type = "item_standard",

    },

	["carrot"] =
    {
        label = "Carrot",
        description = "What's up Doc?",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/carrot.png",
        type = "item_standard",

    },

    ["bagienneseed"] =
    {
        label = "Swamp Herb Seeds",
        description = "Typical seeds",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/bagienneseed.png",
        type = "item_standard",

    },

    ["swampherb"] =
    {
        label = "Swamp Herb",
        description = "Herb of the Swamps",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 32,
        imgsrc = "items/swampherb.png",
        type = "item_standard",

    },
	
	["sugarsaneseed"] =
    {
        label = "Sugar Cane Seed",
        description = "Its a sugar canes way of reproducing",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/sugarsaneseed.png",
        type = "item_standard",


    },
	
	["tobaccoseed"] =
    {
        label = "Tobacco Seed",
        description = "Its a tobacco plants way of reproducing",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/tobaccoseed.png",
        type = "item_standard",


    },

	["tobacco"] =
    {
        label = "Tobacco",
        description = "Smells like an old saloon.",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = false,
        requireLvl = 0,
        limit = 64,
        imgsrc = "items/tobacco.png",
        type = "item_standard",


    },
```
