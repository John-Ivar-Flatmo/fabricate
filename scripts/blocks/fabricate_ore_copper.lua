--document written with tabsize 4

--minetest.register_craftitem("fabricate:copper_ore", {
--    description = "copper ore",
--    inventory_image = "ore_copper_item.png"
--})

minetest.register_node("fabricate:ores_copper", {
    description = "copper ore",
    tiles = {
        "ore_copper.png",	-- up y+
        "ore_copper.png",	-- down y-
        "ore_copper.png",	-- right x+
        "ore_copper.png",	-- left x-
        "ore_copper.png",	-- front z+
        "ore_copper.png",	-- back z-
    },
    is_ground_content = true,	--allow caves to replace block when generating
    groups = {
		ore, ores, ores_copper, ore_copper, copper_ore,			--tag groups, oredict etc
		cracky=3	--mining groups, cracky(higher faster to mine), level(higher easier to mine(tool quality))
	},
    --drop = "fabricate:copper:ore"	--drop instead of self
})
	--register alieases, hopefully peaple start using the same system for oredict cuz currently we do both alias
	--and gorup and multiple entries at that, its a damn mess
minetest.register_alias("fabricate:ore_copper","fabricate:ores_copper")
minetest.register_alias("fabricate:copper_ore","fabricate:ores_copper")


