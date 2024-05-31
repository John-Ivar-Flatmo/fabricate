--document is entierly syncronus, what it loads however can be asyncronus
print("fabricate: main.lua")
local version = 0.1
print("fabricate: version: " .. version)

--TOAD
--fix and make use of fileIndexer, not viable untill minetest supports atleast require	--TODO-1
--generate block scripts eg ores, so we dont have to maintain many copies of same shit --TODO-2 improve after TODO-1

--VARIABLES
local modPath = minetest.get_modpath("fabricate")
fabricate = {} --global table
fabricate.version = version
fabricate.modPath = modPath
fabricate.contraption = {} --table containig contraption functions
fabricate.contraptions = {} --table containing contraptions

--LIBS
--doFileIndexed = dofile(modPath.."/scripts/libs/fileIndexer.lua")	--TODO-1

--BLOCKS
--doFileIndexed("fabricate_ore_copper.lua");	--refrence for later
dofile(modPath .. "/scripts/blocks/fabricate_ore_iron.lua")
dofile(modPath .. "/scripts/blocks/fabricate_ore_gold.lua")
dofile(modPath .. "/scripts/blocks/fabricate_ore_copper.lua")
dofile(modPath .. "/scripts/blocks/fabricate_ore_zinc.lua")
dofile(modPath .. "/scripts/items/fabricate_iron_ingot.lua")
dofile(modPath .. "/scripts/items/fabricate_iron_nugget.lua")
dofile(modPath .. "/scripts/items/fabricate_zinc_ingot.lua")
dofile(modPath .. "/scripts/items/fabricate_zinc_nugget.lua")
dofile(modPath .. "/scripts/items/fabricate_brass_ingot.lua")
dofile(modPath .. "/scripts/items/fabricate_brass_nugget.lua")

--TOOLS

--ARMOR

--GENERATION
dofile(modPath .. "/scripts/world/world_gen.lua")

--FUNCTIONALITY
dofile(modPath .. "/scripts/contraptions/contraptions.lua")
