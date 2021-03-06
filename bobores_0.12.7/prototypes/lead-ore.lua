bobmods.ores.lead =
{
  name = "lead-ore",
  icon = "__bobores__/graphics/icons/lead-ore.png",
  hardness = 0.7,
  mining_time = 1.5,
  tint = {r = 0.5, g = 0.5, b = 0.5},
  map_color = {r=0.250, g=0.250, b=0.250},
  item =
  {
    create = true,
    subgroup = "bob-ores",
    stack_size = 200
  },
  stage_mult = 10,
  sprite =
  {
    sheet = 1
  },
  enabled = false,
  autoplace =
  {
    control = "lead-ore",
    sharpness = 1,
    richness_multiplier = 12000,
    richness_base = 300,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
      },
      {
        influence = 0.65,
        noise_layer = "lead-ore",
        noise_octaves_difference = -2.4,
        noise_persistence = 0.35,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.7,
        noise_layer = "lead-ore",
        noise_octaves_difference = -4,
        noise_persistence = 0.45,
        starting_area_weight_optimal = 1,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    }
  }
--[[
  autoplace = 
  {
    create = true,
    starting_area = true,
    richness = 1.2,
    size = 1
  }
]]--
}

--[[
bobmods.ores.lead.autoplace = {
  control = bobmods.ores.lead.name,
  sharpness = 1,
  richness_multiplier = 12000,
  richness_base = 300,
  size_control_multiplier = 0.06,
  peaks =
  {
    bob_autoplace_peak{influence = 0.2},
    bob_autoplace_peak{influence = 0.65, starting_area = 0, noise = {layer = bobmods.ores.lead.name, octaves = -2.4, persistance = 0.35}},
    bob_autoplace_peak{influence = 0.7, starting_area = 1, noise = {layer = bobmods.ores.lead.name, octaves = -4.5, persistance = 0.5}}
  }
}
]]--



