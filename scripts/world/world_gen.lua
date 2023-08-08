

--minetest.register_decoration({
--    deco_type = "simple",
--    place_on = {"base:dirt_with_grass"},
--    sidelen = 16,
--    fill_ratio = 0.008,
--    biomes = {"grassy_plains"},
--    y_max = 200,
--    y_min = 1,
--    decoration = "fabricate:ores_zinc",
--})

minetest.register_ore({
	ore_type = "sheet",
	ore = "fabricate:ores_zinc",
	wherein = "default:stone",
	cluster_size = 5,
	height_min = -3100,
	height_max = 200,
	noise_params = {
		offset= 0,
		scale = 1,
		spread = { x=100, y=50, z=100 },
		seed = 23,
		octaves = 5,
		persist 	= 0.70
	}

})

