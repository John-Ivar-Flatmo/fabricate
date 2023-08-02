--document written with tabsize 4

--minetest.register_craftitem("fabricate:gold_ore", {
--    description = "gold ore",
--    inventory_image = "ore_gold_item.png"
--})

minetest.register_node("fabricate:ores_gold", {
    description = "gold ore",
    tiles = {
        "ore_gold.png",	-- up y+
        "ore_gold.png",	-- down y-
        "ore_gold.png",	-- right x+
        "ore_gold.png",	-- left x-
        "ore_gold.png",	-- front z+
        "ore_gold.png",	-- back z-
    },
    is_ground_content = true,	--allow caves to replace block when generagoldg
    groups = {
		ore, ores, ores_gold, ore_gold, gold_ore,			--tag groups, oredict etc
		cracky=3	--mining groups, cracky(higher faster to mine), level(higher easier to mine(tool quality))
	},
    --drop = "fabricate:gold:ore"	--drop instead of self
})
	--register alieases, hopefully peaple start using the same system for oredict cuz currently we do both alias
	--and gorup and multiple entries at that, its a damn mess
minetest.register_alias("fabricate:ore_gold","fabricate:ores_gold")
minetest.register_alias("fabricate:gold_ore","fabricate:ores_gold")


