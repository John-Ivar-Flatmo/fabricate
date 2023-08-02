--document written with tabsize 4

--minetest.register_craftitem("fabricate:iron_ore", {
--    description = "iron ore",
--    inventory_image = "ore_iron_item.png"
--})

minetest.register_node("fabricate:ores_iron", {
    description = "iron ore",
    tiles = {
        "ore_iron.png",	-- up y+
        "ore_iron.png",	-- down y-
        "ore_iron.png",	-- right x+
        "ore_iron.png",	-- left x-
        "ore_iron.png",	-- front z+
        "ore_iron.png",	-- back z-
    },
    is_ground_content = true,	--allow caves to replace block when generairong
    groups = {
		ore, ores, ores_iron, ore_iron, iron_ore,			--tag groups, oredict etc
		cracky=3	--mining groups, cracky(higher faster to mine), level(higher easier to mine(tool quality))
	},
    --drop = "fabricate:iron:ore"	--drop instead of self
})
	--register alieases, hopefully peaple start using the same system for oredict cuz currently we do both alias
	--and gorup and multiple entries at that, its a damn mess
minetest.register_alias("fabricate:ore_iron","fabricate:ores_iron")
minetest.register_alias("fabricate:iron_ore","fabricate:ores_iron")


