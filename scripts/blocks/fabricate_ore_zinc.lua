--document written with tabsize 4

--minetest.register_craftitem("fabricate:zinc_ore", {
--    description = "zinc ore",
--    inventory_image = "ore_zinc_item.png"
--})

minetest.register_node("fabricate:ores_zinc", {
    description = "zinc ore",
    tiles = {
        "ore_zinc.png",	-- up y+
        "ore_zinc.png",	-- down y-
        "ore_zinc.png",	-- right x+
        "ore_zinc.png",	-- left x-
        "ore_zinc.png",	-- front z+
        "ore_zinc.png",	-- back z-
    },
    is_ground_content = true,	--allow caves to replace block when generating
    groups = {
		ore, ores, ores_zinc, ore_zinc, zinc_ore,			--tag groups, oredict etc
		cracky=3	--mining groups, cracky(higher faster to mine), level(higher easier to mine(tool quality))
	},
    --drop = "fabricate:zinc:ore"	--drop instead of self
})
	--register alieases, hopefully peaple start using the same system for oredict cuz currently we do both alias
	--and gorup and multiple entries at that, its a damn mess
minetest.register_alias("fabricate:ore_zinc","fabricate:ores_zinc")
minetest.register_alias("fabricate:zinc_ore","fabricate:ores_zinc")


