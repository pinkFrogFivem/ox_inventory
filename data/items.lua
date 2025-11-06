return {

	
	['backpack'] = {
		label = 'Extra Backpack',
		weight = 5000,
		stack = true,
		close = true,
		description = 'Add extra slots and weight',
		rarity = 'unique', -- can be unique, rare, epic, legendary, mythic
	},

		['extrabag'] = {
		label = 'Extra Bag',
		weight = 7000,
		stack = true,
		close = true,
		description = 'Add extra slots and weight',
		rarity = 'epic', -- can be unique, rare, epic, legendary, mythic
		canThrow = true, -- if true, then you can throw this item (only if Config.throwingSettings.enable = true in pinkFrog_inventoryAddon/config.lua)
		-- if you enable canThrow without prop it's going to use default prop of bag 
		-- propThrow = 'prop_nigel_bag_pickup', -- prop to show when you throw item (only if canThrow = true) 
		client = {
		   image = 'bags.png',
		}
	},

	['bag_clothes'] = {
		label = 'Bag (Clothes)',
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		description = 'A stylish bag to carry your clothes',
		rarity = 'rare', -- can be unique, rare, epic, legendary, mythic
		canRename = true, -- if true, then you can rename this item (only if Config.canRenameAllItems = false in config.lua)
	    canChangeDescription = true, -- if true, then you can change description for this item (only if Config.canChangeDescription = false in config.lua)
		canThrow = true, -- if true, then you can throw this item (only if Config.throwingSettings.enable = true in pinkFrog_inventoryAddon/config.lua)
		propThrow = 'prop_nigel_bag_pickup', -- prop to show when you throw item (only if canThrow = true)
		client = {
			export = 'pinkFrog_inventoryAddon.useBagClothes',
		},
	},

	-- it's exmample you can register as many items as you want below
	['plate_armor'] = {
	label = 'Plate armor',
	weight = 100,
	stack = true,
	close = true,
	rarity = 'rare',
	description = 'Adds 50 extra protection to your bulletproof vest',
  },

 
  ['plate_reinforced'] = {
	label = 'Plate armor (Reinforced)',
	weight = 100,
	stack = true,
	close = true,
	rarity = 'rare',
	description = 'Adds 75 extra protection to your bulletproof vest',
	client = {
		   image = 'plate_armor.png',
	}
   },

    
  ['plate_military'] = {
	label = 'Plate armor (Military)',
	weight = 100,
	stack = true,
	close = true,
	rarity = 'rare',
	description = 'Adds 100 extra protection to your bulletproof vest',
	client = {
		   image = 'plate_armor.png',
	}
   },


	-- You need to add the following items to your ox_inventory/data/items.lua file
['hat'] = {
	label = 'Hat',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
	buttons = {      
		
        {
            label = 'Hide hair', -- additional button to hide hair
            action = function(slot) 
                TriggerEvent('pinkFrog:repairFivemBrokenModels', slot, 'hat', 'clear')
            end
        },
        {
            label = 'Show hair',
            action = function(slot)
                TriggerEvent('pinkFrog:repairFivemBrokenModels', slot, 'hat', 'restore')
            end
        },
    },
},

['ears'] = {
		label = 'Ears',
		weight = 100,
		stack = true,
		close = true,
		description = nil,

},
	
['tshirt'] = {
	label = 'T-shirt',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},



['torso'] = {
	label = 'Torso',
	weight = 0,
	stack = false,
	close = true,
	description = nil,
},


['arms'] = {
	label = 'Arms',
	weight = 100,
	stack = true,
	close = true,
	description = nil,
},

['legs'] = {
	label = 'Pants',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},


['shoes'] = {
	label = 'Shoes',
	weight = 100,
	stack = false,
	close = true,
	description = nil,	
},

['mask'] = {
    label = 'Mask',              
    weight = 100,           
    stack = false,                 
    close = true,                   
    description = nil,             
    buttons = {           
        {
            label = 'Hide face', -- additional button to hide face
            action = function(slot) 
                TriggerEvent('pinkFrog:repairFivemBrokenModels', slot, 'mask', 'clear')
            end
        },
        {
            label = 'Show face',
            action = function(slot)
                TriggerEvent('pinkFrog:repairFivemBrokenModels', slot, 'mask', 'restore')
            end
        },
    },
},

['chain'] = {
	label = 'Chain',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},


['glasses'] = {
	label = 'Glasses',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},


['bproof'] = {
	label = 'Bulletproof',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
	   buttons = {           
        {
            label = 'Add a plate', -- additional button to add plate
            action = function(slot) 
                TriggerEvent('pinkFrog:addPlateToBproof', slot)
            end
        },
	},
},


['bags'] = {
	label = 'Bag',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},

['watches'] = {
	label = 'Watches',
	weight = 100,
	stack = false,
	close = true,
	description = nil,
},


   ['radio'] = {
		label = 'Radio',
		weight = 250,
		stack = false,
		consume = 0,
		close = true,
		durability = 0.1,
		-- rarity = 'unique',  -- can be unique, rare, epic, legendary, mythic
			-- example
	    canRename = true, -- if true, then you can rename this item (only if Config.canRenameAllItems = false in config.lua)
	    canChangeDescription = true, -- if true, then you can change description for this item (only if Config.canChangeDescription = false in config.lua)
		canThrow = true, -- if true, then you can throw this item (only if Config.throwingSettings.enable = true in pinkFrog_inventoryAddon/config.lua)
		propThrow = 'prop_cs_hand_radio', -- prop to show when you throw item (only if canThrow = true)
		description = 'Used to operate the radio',
		client = {
			export = 'pinkFrog_radioList.useRadio',
		},
	},



	
	['burger'] = {
		label = 'Burger',
		weight = 220,
		canThrow = true, -- if true, then you can throw this item (only if Config.throwingSettings.enable = true in pinkFrog_inventoryAddon/config.lua)
		propThrow = 'prop_cs_burger_01', -- prop to show when you throw item (only if canThrow = true)
		rarity = 'rare',
		canRename = true,
		canChangeDescription = true,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['battery'] = {
		label = 'Battery',
		weight = 100,
		stack = true,
		
		consume = 1,
		description = 'Used to charge the radio',
		client = {
			export = 'pinkFrog_radioList.chargeRadio',
		},
	},

		['jammer'] = {
		label = 'Jammer',
		weight = 100,
		rarity = 'epic',
		stack = true,
		consume = 0,
		description = 'Used to jam radio signals',
		client = {
			export = 'pinkFrog_radioList.jammerRadio',
		},
	},







	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},



	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["ball_ammo"] = {
		label = "ball_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["bird_crap_ammo"] = {
		label = "bird_crap_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Bread",
		weight = 1,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["enemy_laser_ammo"] = {
		label = "enemy_laser_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fireextinguisher_ammo"] = {
		label = "fireextinguisher_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["flare_ammo"] = {
		label = "Flares",
		weight = 100,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["grenadelauncher_ammo"] = {
		label = "grenadelauncher_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["grenadelauncher_smoke_ammo"] = {
		label = "grenadelauncher_smoke_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["gzgas_ammo"] = {
		label = "gzgas_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["mg_ammo"] = {
		label = "MG Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["minigun_ammo"] = {
		label = "Minigun Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["molotov_ammo"] = {
		label = "molotov_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["pistol_ammo"] = {
		label = "Pistol Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["plane_rocket_ammo"] = {
		label = "plane_rocket_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["player_laser_ammo"] = {
		label = "player_laser_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["rifle_ammo"] = {
		label = "Rifle Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["rpg_ammo"] = {
		label = "RPG Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["shotgun_ammo"] = {
		label = "Shotgun Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["smg_ammo"] = {
		label = "SMG Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["smokegrenade_ammo"] = {
		label = "smokegrenade_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["sniper_ammo"] = {
		label = "Sniper Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["sniper_remote_ammo"] = {
		label = "Sniper Remote Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["space_rocket_ammo"] = {
		label = "space_rocket_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["stickybomb_ammo"] = {
		label = "stickybomb_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["stinger_ammo"] = {
		label = "stinger_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["stungun_ammo"] = {
		label = "Stungun Ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["tank_ammo"] = {
		label = "tank_ammo",
		weight = 100,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_advancedrifle"] = {
		label = "CTAR-21",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_appistol"] = {
		label = "Colt SCAMP",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_assaultrifle"] = {
		label = "AK 47",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_assaultrifle_mk2"] = {
		label = "assaultrifle_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_assaultshotgun"] = {
		label = "UTAS UTS15",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_assaultsmg"] = {
		label = "Magpul PDR",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_autoshotgun"] = {
		label = "AA12",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_ball"] = {
		label = "ball",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bat"] = {
		label = "Baseball Bat",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_battleaxe"] = {
		label = "Battle Axe",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bottle"] = {
		label = "Bottle",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bullpuprifle"] = {
		label = "Type 86-S",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bullpuprifle_mk2"] = {
		label = "bullpuprifle_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bullpupshotgun"] = {
		label = "Kel-Tec KSG",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_bzgas"] = {
		label = "bz gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_carbinerifle"] = {
		label = "M4A1",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_carbinerifle_mk2"] = {
		label = "carbinerifle_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_combatmg"] = {
		label = "M249E1",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_combatmg_mk2"] = {
		label = "combatmg_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_combatpdw"] = {
		label = "SIG Sauer MPX",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_combatpistol"] = {
		label = "Sig Sauer P228",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_compactlauncher"] = {
		label = "M79 GL",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_compactrifle"] = {
		label = "Micro Draco AK Pistol",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_crowbar"] = {
		label = "Crow Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_dagger"] = {
		label = "Dagger",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_dbshotgun"] = {
		label = "Zabala short-barreled side-by-side shotgun",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_digiscanner"] = {
		label = "digiscanner",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_doubleaction"] = {
		label = "doubleaction",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_fireextinguisher"] = {
		label = "Fire Extinguisher",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_firework"] = {
		label = "Firework",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_flare"] = {
		label = "Flare",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_flaregun"] = {
		label = "Flare Gun",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_flashlight"] = {
		label = "Flashlight",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_garbagebag"] = {
		label = "garbagebag",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_golfclub"] = {
		label = "Golf Club",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_grenade"] = {
		label = "grenade",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_grenadelauncher"] = {
		label = "Milkor MGL",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_gusenberg"] = {
		label = "M1928A1 Thompson SMG",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_hammer"] = {
		label = "Hammer",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_handcuffs"] = {
		label = "handcuffs",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_hatchet"] = {
		label = "hatchet",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_heavypistol"] = {
		label = "EWB 1911",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_heavyshotgun"] = {
		label = "Saiga12K",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_heavysniper"] = {
		label = "M107",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_heavysniper_mk2"] = {
		label = "heavysniper_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_hominglauncher"] = {
		label = "SA-7 Grail",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_knife"] = {
		label = "Knife",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_knuckle"] = {
		label = "Knuckledusters",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_machete"] = {
		label = "machete",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_machinepistol"] = {
		label = "TEC-9",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_marksmanpistol"] = {
		label = "Thompson-Center Contender G2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_marksmanrifle"] = {
		label = "M39 EMR",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_marksmanrifle_mk2"] = {
		label = "marksmanrifle_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_mg"] = {
		label = "PKP Pecheneg",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_microsmg"] = {
		label = "Micro SMG",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_minigun"] = {
		label = "minigun",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_minismg"] = {
		label = "Skorpion Vz. 61",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_molotov"] = {
		label = "Molotov Cocktail",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_musket"] = {
		label = "Brown Bess",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_nightstick"] = {
		label = "ASP Baton",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_nightvision"] = {
		label = "Night Vision",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_parachute"] = {
		label = "parachute",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_petrolcan"] = {
		label = "Petrol Can",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pipebomb"] = {
		label = "pipe bomb",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pistol"] = {
		label = "Colt M1911",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pistol50"] = {
		label = "Desert Eagle",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pistol_mk2"] = {
		label = "Sig Sauer P226",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_poolcue"] = {
		label = "pool cue",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_proxmine"] = {
		label = "Proxmine Mine",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pumpshotgun"] = {
		label = "Remington 870",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_pumpshotgun_mk2"] = {
		label = "pumpshotgun_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_railgun"] = {
		label = "railgun",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_remotesniper"] = {
		label = "Remote Sniper",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_revolver"] = {
		label = "Taurus Raging Bull",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_revolver_mk2"] = {
		label = "revolver_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_rpg"] = {
		label = "RPG-7",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_sawnoffshotgun"] = {
		label = "Mossberg 500",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_smg"] = {
		label = "MP5A3",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_smg_mk2"] = {
		label = "smg_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_smokegrenade"] = {
		label = "smoke grenade",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_sniperrifle"] = {
		label = "PSG1",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_snowball"] = {
		label = "Snow Ball",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_snspistol"] = {
		label = "H&K P7",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_snspistol_mk2"] = {
		label = "snspistol_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_specialcarbine"] = {
		label = "H&K G36C",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_specialcarbine_mk2"] = {
		label = "specialcarbine_mk2",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_stickybomb"] = {
		label = "sticky bomb",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_stinger"] = {
		label = "stinger",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_stungun"] = {
		label = "X26 Taser",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_switchblade"] = {
		label = "Switchblade",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_vintagepistol"] = {
		label = "FN Model 1910",
		weight = 1,
		stack = true,
		close = true,
	},

	["weapon_wrench"] = {
		label = "wrench",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},
}