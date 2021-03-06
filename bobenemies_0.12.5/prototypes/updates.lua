if data.raw.unit["small-biter"] then
  if data.raw.unit["small-biter"].loot == nil then 
    data.raw.unit["small-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["small-biter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 1,  probability = 0.5 } )
  end
end

if data.raw.unit["small-spitter"] then
  if data.raw.unit["small-spitter"].loot == nil then 
    data.raw.unit["small-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["small-spitter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 1,  probability = 0.5 } )
  end
end

if data.raw.unit["medium-biter"] then
  if data.raw.unit["medium-biter"].loot == nil then 
    data.raw.unit["medium-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["medium-biter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 3,  probability = 0.75 } )
  end
end

if data.raw.unit["medium-spitter"] then
  if data.raw.unit["medium-spitter"].loot == nil then 
    data.raw.unit["medium-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["medium-spitter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 3,  probability = 0.75 } )
  end
end

if data.raw.unit["big-biter"]~=nil then
  if data.raw.unit["big-biter"].loot == nil then 
    data.raw.unit["big-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["big-biter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 4,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-blue"] then
    table.insert(data.raw.unit["big-biter"].loot, {  item = "small-alien-artifact-blue",  count_min = 1,  count_max = 1,  probability = 0.5 } )
  end
end

if data.raw.unit["big-spitter"]~=nil then
  if data.raw.unit["big-spitter"].loot == nil then 
    data.raw.unit["big-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact"] then
    table.insert(data.raw.unit["big-spitter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 4,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-orange"] then
    table.insert(data.raw.unit["big-spitter"].loot, {  item = "small-alien-artifact-orange",  count_min = 1,  count_max = 1,  probability = 0.5 } )
  end
end


if data.raw.unit["bob-bigger-biter"]~=nil then
  if data.raw.unit["bob-bigger-biter"].loot == nil then 
    data.raw.unit["bob-bigger-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-blue"] then
    table.insert(data.raw.unit["bob-bigger-biter"].loot, {  item = "small-alien-artifact-blue",  count_min = 1,  count_max = 3,  probability = 0.25 } )
  end
  if data.raw.item["small-alien-artifact-purple"] then
    table.insert(data.raw.unit["bob-bigger-biter"].loot, {  item = "small-alien-artifact-purple",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-blue"]==nil and data.raw.item["small-alien-artifact-purple"]==nil then
    table.insert(data.raw.unit["bob-bigger-biter"].loot, {  item = "small-alien-artifact",  count_min = 2,  count_max = 5,  probability = 1 } )
  end
end

if data.raw.unit["bob-bigger-spitter"]~=nil then
  if data.raw.unit["bob-bigger-spitter"].loot == nil then 
    data.raw.unit["bob-bigger-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-orange"] then
    table.insert(data.raw.unit["bob-bigger-spitter"].loot, {  item = "small-alien-artifact-orange",  count_min = 1,  count_max = 3,  probability = 0.25 } )
  end
  if data.raw.item["small-alien-artifact-yellow"] then
    table.insert(data.raw.unit["bob-bigger-spitter"].loot, {  item = "small-alien-artifact-yellow",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-orange"]==nil and data.raw.item["small-alien-artifact-yellow"]==nil then
    table.insert(data.raw.unit["bob-bigger-spitter"].loot, {  item = "small-alien-artifact",  count_min = 2,  count_max = 5,  probability = 1 } )
  end
end


if data.raw.unit["bob-biggest-biter"]~=nil then
  if data.raw.unit["bob-biggest-biter"].loot == nil then 
    data.raw.unit["bob-biggest-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-blue"] then
    table.insert(data.raw.unit["bob-biggest-biter"].loot, {  item = "small-alien-artifact-blue",  count_min = 1,  count_max = 3,  probability = 0.5 } )
  end
  if data.raw.item["small-alien-artifact-green"] then
    table.insert(data.raw.unit["bob-biggest-biter"].loot, {  item = "small-alien-artifact-green",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-blue"]==nil and data.raw.item["small-alien-artifact-green"]==nil then
    table.insert(data.raw.unit["bob-biggest-biter"].loot, {  item = "small-alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  end
end

if data.raw.unit["bob-fire-biter"]~=nil then
  if data.raw.unit["bob-fire-biter"].loot == nil then 
    data.raw.unit["bob-fire-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-blue"] then
    table.insert(data.raw.unit["bob-fire-biter"].loot, {  item = "small-alien-artifact-blue",  count_min = 1,  count_max = 3,  probability = 0.5 } )
  end
  if data.raw.item["small-alien-artifact-red"] then
    table.insert(data.raw.unit["bob-fire-biter"].loot, {  item = "small-alien-artifact-red",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-blue"]==nil and data.raw.item["small-alien-artifact-red"]==nil then
    table.insert(data.raw.unit["bob-fire-biter"].loot, {  item = "small-alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  end
end


if data.raw.unit["bob-biggest-spitter"]~=nil then
  if data.raw.unit["bob-biggest-spitter"].loot == nil then 
    data.raw.unit["bob-biggest-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-orange"] then
    table.insert(data.raw.unit["bob-biggest-spitter"].loot, {  item = "small-alien-artifact-orange",  count_min = 1,  count_max = 3,  probability = 0.5 } )
  end
  if data.raw.item["small-alien-artifact-red"] then
    table.insert(data.raw.unit["bob-biggest-spitter"].loot, {  item = "small-alien-artifact-red",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-orange"]==nil and data.raw.item["small-alien-artifact-red"]==nil then
    table.insert(data.raw.unit["bob-biggest-spitter"].loot, {  item = "small-alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  end
end

if data.raw.unit["bob-poison-spitter"]~=nil then
  if data.raw.unit["bob-poison-spitter"].loot == nil then 
    data.raw.unit["bob-poison-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-orange"] then
    table.insert(data.raw.unit["bob-poison-spitter"].loot, {  item = "small-alien-artifact-orange",  count_min = 1,  count_max = 3,  probability = 0.5 } )
  end
  if data.raw.item["small-alien-artifact-green"] then
    table.insert(data.raw.unit["bob-poison-spitter"].loot, {  item = "small-alien-artifact-green",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-orange"]==nil and data.raw.item["small-alien-artifact-green"]==nil then
    table.insert(data.raw.unit["bob-poison-spitter"].loot, {  item = "small-alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  end
end


if data.raw["unit-spawner"]["bob-biter-spawner"] then
  if data.raw["unit-spawner"]["bob-biter-spawner"].loot == nil then 
    data.raw["unit-spawner"]["bob-biter-spawner"].loot = {}
  end
  if data.raw.item["alien-artifact-blue"] then
    table.insert(data.raw["unit-spawner"]["bob-biter-spawner"].loot, {  item = "alien-artifact-blue",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["alien-artifact-purple"] then
    table.insert(data.raw["unit-spawner"]["bob-biter-spawner"].loot, {  item = "alien-artifact-purple",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["alien-artifact-blue"] then
    table.insert(data.raw["unit-spawner"]["bob-biter-spawner"].loot, {  item = "alien-artifact-green",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
end

if data.raw["unit-spawner"]["bob-spitter-spawner"] then
  if data.raw["unit-spawner"]["bob-spitter-spawner"].loot == nil then 
    data.raw["unit-spawner"]["bob-spitter-spawner"].loot = {}
  end
  if data.raw.item["alien-artifact-orange"] then
    table.insert(data.raw["unit-spawner"]["bob-spitter-spawner"].loot, {  item = "alien-artifact-orange",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["alien-artifact-red"] then
    table.insert(data.raw["unit-spawner"]["bob-spitter-spawner"].loot, {  item = "alien-artifact-red",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["alien-artifact-yellow"] then
    table.insert(data.raw["unit-spawner"]["bob-spitter-spawner"].loot, {  item = "alien-artifact-yellow",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
end


if data.raw.turret["small-worm-turret"] then
  if data.raw.turret["small-worm-turret"].loot == nil then 
    data.raw.turret["small-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact"] then
    table.insert(data.raw.turret["small-worm-turret"].loot, { item = "alien-artifact",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
end

if data.raw.turret["medium-worm-turret"] then
  if data.raw.turret["medium-worm-turret"].loot == nil then 
    data.raw.turret["medium-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact"] then
    table.insert(data.raw.turret["medium-worm-turret"].loot, { item = "alien-artifact",  count_min = 2,  count_max = 4,  probability = 1 } )
  end
end

if data.raw.turret["big-worm-turret"] then
  if data.raw.turret["big-worm-turret"].loot == nil then 
    data.raw.turret["big-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact-blue"] then
    table.insert(data.raw.turret["big-worm-turret"].loot, { item = "alien-artifact-blue",  count_min = 1,  count_max = 2,  probability = 0.5 } )
  end
  if data.raw.item["alien-artifact-purple"] then
    table.insert(data.raw.turret["big-worm-turret"].loot, { item = "alien-artifact-purple",  count_min = 1,  count_max = 2,  probability = 1 } )
  end
  if data.raw.item["alien-artifact"] and data.raw.item["alien-artifact-blue"]==nil and data.raw.item["alien-artifact-purple"]==nil then
    table.insert(data.raw.turret["big-worm-turret"].loot, { item = "alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  else
    table.insert(data.raw.turret["big-worm-turret"].loot, { item = "alien-artifact",  count_min = 2,  count_max = 4,  probability = 1 } )
  end
end

if data.raw.turret["bob-big-explosive-worm-turret"] then
  if data.raw.turret["bob-big-explosive-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-explosive-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact-orange"] then
    table.insert(data.raw.turret["bob-big-explosive-worm-turret"].loot, { item = "alien-artifact-orange",  count_min = 1,  count_max = 2,  probability = 0.5 } )
  end
  if data.raw.item["alien-artifact-yellow"] then
    table.insert(data.raw.turret["bob-big-explosive-worm-turret"].loot, { item = "alien-artifact-yellow",  count_min = 1,  count_max = 2,  probability = 1 } )
  end
  if data.raw.item["alien-artifact"] and data.raw.item["alien-artifact-orange"]==nil and data.raw.item["alien-artifact-yellow"]==nil then
    table.insert(data.raw.turret["bob-big-explosive-worm-turret"].loot, { item = "alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  else
    table.insert(data.raw.turret["bob-big-explosive-worm-turret"].loot, { item = "alien-artifact",  count_min = 2,  count_max = 4,  probability = 1 } )
  end
end

if data.raw.turret["bob-big-poison-worm-turret"] then
  if data.raw.turret["bob-big-poison-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-poison-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact-blue"] then
    table.insert(data.raw.turret["bob-big-poison-worm-turret"].loot, { item = "alien-artifact-blue",  count_min = 1,  count_max = 2,  probability = 0.5 } )
  end
  if data.raw.item["alien-artifact-green"] then
    table.insert(data.raw.turret["bob-big-poison-worm-turret"].loot, { item = "alien-artifact-green",  count_min = 1,  count_max = 2,  probability = 1 } )
  end
  if data.raw.item["alien-artifact"] and data.raw.item["alien-artifact-blue"]==nil and data.raw.item["alien-artifact-green"]==nil then
    table.insert(data.raw.turret["bob-big-poison-worm-turret"].loot, { item = "alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  else
    table.insert(data.raw.turret["bob-big-poison-worm-turret"].loot, { item = "alien-artifact",  count_min = 2,  count_max = 4,  probability = 1 } )
  end
end

if data.raw.turret["bob-big-fire-worm-turret"] then
  if data.raw.turret["bob-big-fire-worm-turret"].loot == nil then 
    data.raw.turret["bob-big-fire-worm-turret"].loot = {}
  end
  if data.raw.item["alien-artifact-orange"] then
    table.insert(data.raw.turret["bob-big-fire-worm-turret"].loot, { item = "alien-artifact-orange",  count_min = 1,  count_max = 2,  probability = 0.5 } )
  end
  if data.raw.item["alien-artifact-red"] then
    table.insert(data.raw.turret["bob-big-fire-worm-turret"].loot, { item = "alien-artifact-red",  count_min = 1,  count_max = 2,  probability = 1 } )
  end
  if data.raw.item["alien-artifact"] and data.raw.item["alien-artifact-orange"]==nil and data.raw.item["alien-artifact-red"]==nil then
    table.insert(data.raw.turret["bob-big-fire-worm-turret"].loot, { item = "alien-artifact",  count_min = 3,  count_max = 6,  probability = 1 } )
  else
    table.insert(data.raw.turret["bob-big-fire-worm-turret"].loot, { item = "alien-artifact",  count_min = 2,  count_max = 4,  probability = 1 } )
  end
end





if data.raw.unit["behemoth-biter"]~=nil then
  if data.raw.unit["behemoth-biter"].loot == nil then 
    data.raw.unit["behemoth-biter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-blue"] then
    table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "small-alien-artifact-blue",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-purple"] then
    table.insert(data.raw.unit["behemoth-biter"].loot, { item = "small-alien-artifact-purple",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-green"] then
    table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "small-alien-artifact-green",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-blue"]==nil and data.raw.item["small-alien-artifact-purple"]==nil and data.raw.item["small-alien-artifact-green"]==nil then
    table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "small-alien-artifact",  count_min = 4,  count_max = 12,  probability = 1 } )
  else
    if data.raw.item["small-alien-artifact"] then
      table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 3,  probability = 1 } )
    else
      table.insert(data.raw.unit["behemoth-biter"].loot, {  item = "alien-artifact",  count_min = 1,  count_max = 2,  probability = 0.5 } )
    end
  end
  data.raw.unit["behemoth-biter"].attack_parameters.animation = biterattackanimation(behemoth_scale, behemoth_biter_tint1, behemoth_biter_tint2)
  data.raw.unit["behemoth-biter"].run_animation = biterrunanimation(behemoth_scale, behemoth_biter_tint1, behemoth_biter_tint2)
  data.raw.unit["behemoth-biter"].collision_box = {{-0.8, -0.8}, {0.8, 0.8}}
  data.raw.unit["behemoth-biter"].selection_box = {{-1.5, -3}, {1.5, 0.6}}

  data.raw.corpse["behemoth-biter-corpse"].animation = biterdieanimation(behemoth_scale, behemoth_biter_tint1, behemoth_biter_tint2)
  data.raw.corpse["behemoth-biter-corpse"].selection_box = {{-2, -2}, {2, 2}}
end


if data.raw.unit["behemoth-spitter"]~=nil then
  if data.raw.unit["behemoth-spitter"].loot == nil then 
    data.raw.unit["behemoth-spitter"].loot = {}
  end
  if data.raw.item["small-alien-artifact-orange"] then
    table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "small-alien-artifact-orange",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-yellow"] then
    table.insert(data.raw.unit["behemoth-spitter"].loot, { item = "small-alien-artifact-yellow",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact-red"] then
    table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "small-alien-artifact-red",  count_min = 1,  count_max = 3,  probability = 1 } )
  end
  if data.raw.item["small-alien-artifact"] and data.raw.item["small-alien-artifact-orange"]==nil and data.raw.item["small-alien-artifact-yellow"]==nil and data.raw.item["small-alien-artifact-red"]==nil then
    table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "small-alien-artifact",  count_min = 4,  count_max = 12,  probability = 1 } )
  else
    if data.raw.item["small-alien-artifact"] then
      table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 3,  probability = 1 } )
    else
      table.insert(data.raw.unit["behemoth-spitter"].loot, {  item = "alien-artifact",  count_min = 1,  count_max = 2,  probability = 0.5 } )
    end
  end
  data.raw.unit["behemoth-spitter"].attack_parameters = spitterattackparameters({range=15, cooldown=100, damage_modifier=5, scale=behemoth_scale, tint=behemothspittertint})
  data.raw.unit["behemoth-spitter"].run_animation = spitterrunanimation(behemoth_scale, behemothspittertint)
  data.raw.unit["behemoth-spitter"].collision_box = {{-1, -1}, {1, 1}}
  data.raw.unit["behemoth-spitter"].selection_box = {{-1.5, -2}, {1.5, 2}}

  data.raw.corpse["behemoth-spitter-corpse"].animation = spitterdyinganimation(behemoth_scale, behemothspittertint)
  data.raw.corpse["behemoth-spitter-corpse"].collision_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.corpse["behemoth-spitter-corpse"].selection_box = {{-1.5, -2}, {1.5, 2}}
end




