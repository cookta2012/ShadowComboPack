if data.raw.tool["science-pack-4"] then
  bobmods.lib.replace_science_pack ("effect-transmission-3", "alien-science-pack", "science-pack-4")
end
bobmods.lib.remove_technology_prerequisite ("effect-transmission", "advanced-electronics-2")


if data.raw.item["aluminium-plate"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-2", "steel-plate", "aluminium-plate")
  bobmods.lib.add_technology_prerequisite ("effect-transmission-2", "aluminium-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-2", "copper-cable", "tinned-copper-cable")
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-3", "steel-plate", "titanium-plate")
  bobmods.lib.add_technology_prerequisite ("effect-transmission-3", "titanium-processing")
end

if data.raw.item["gold-plate"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-3", "copper-plate", "gold-plate")
  bobmods.lib.add_technology_prerequisite ("effect-transmission-3", "gold-processing")
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-3", "copper-cable", "insulated-cable")
end


if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.replace_recipe_item ("basic-beacon-3", "electronic-circuit", "advanced-processing-unit")
  bobmods.lib.add_technology_prerequisite ("effect-transmission-3", "advanced-electronics-3")
end

