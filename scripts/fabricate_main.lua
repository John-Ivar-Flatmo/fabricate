--document written with tabsize 4
--document is entierly syncronus, what it loads is however probably asyncronus
print("fabricate: main.lua")

--TOAD
--fix and make use of fileIndexer, not viable untill minetest supports atleast require	--TODO-1
--generate block scripts eg ores, so we dont have to maintain many copies of same shit --TODO-2 requires TODO-1

--VARIABLES
modPath=minetest.get_modpath("fabricate")

--LIBS
--doFileIndexed = dofile(modPath.."/scripts/libs/fileIndexer.lua")	--TODO-1

--BLOCKS
--doFileIndexed("fabricate_ore_copper.lua");	--refrence for later
dofile(modPath.."/scripts/blocks/fabricate_ore_iron.lua")
dofile(modPath.."/scripts/blocks/fabricate_ore_gold.lua")
dofile(modPath.."/scripts/blocks/fabricate_ore_copper.lua")
dofile(modPath.."/scripts/blocks/fabricate_ore_zinc.lua")


--TOOLS




--ARMOR

