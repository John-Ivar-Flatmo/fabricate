--document written with tabsize 4
--print("___	")	--TODO-1
--print("|__	")	--TODO-1
--print("|	")	--TODO-1
--print("|	")	--TODO-1
print("fabricate: init.lua") --TODO-1

--TOAD
--replace print with multiline text to match minetest on startup	--TODO-1

--VARIABLES
modPath = minetest.get_modpath("fabricate")

--require() --prefered in main.lua but not here since we just load main.lua
dofile(modPath .. "/scripts/fabricate_main.lua")
