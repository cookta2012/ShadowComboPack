--data.raw["mining-drill"]["basic-mining-drill"].storage_slots = 6
--data.raw["mining-drill"]["burner-mining-drill"].storage_slots = 6

for i, drill in pairs(data.raw["mining-drill"]) do
  if not drill.storage_slots then drill.storage_slots = 6 end
end


if bobmods.mining.MiningDrills == true then
  require("prototypes.drill-updates")
end


if bobmods.mining.AreaDrills == true then
  require("prototypes.areadrill-updates")
end


if bobmods.mining.Pumpjacks == true then
  require("prototypes.pumpjack-updates")
end


if bobmods.mining.MiningAxes == true then
  require("prototypes.axe-updates")
end
