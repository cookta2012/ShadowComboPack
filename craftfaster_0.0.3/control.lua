require("defines")

local ontick=defines.events.on_tick

function UpdateSpeeds()
	for _,f in pairs(game.forces) do
		if f.technologies["faster-crafting-5"].researched then
			f.manual_crafting_speed_modifier = 2
		elseif f.technologies["faster-crafting-4"].researched then
			f.manual_crafting_speed_modifier = 1.4
		elseif f.technologies["faster-crafting-3"].researched then
			f.manual_crafting_speed_modifier = 0.9
		elseif f.technologies["faster-crafting-2"].researched then
			f.manual_crafting_speed_modifier = 0.5
		elseif f.technologies["faster-crafting-1"].researched then
			f.manual_crafting_speed_modifier = 0.2
		else
			f.manual_crafting_speed_modifier = 0
		end
		--game.players[1].print(f.name..f.manual_crafting_speed_modifier)
	end
	script.on_event(ontick,nil)
end

script.on_init(UpdateSpeeds)
script.on_load(UpdateSpeeds)

function ticked()
	UpdateSpeeds()
end

script.on_event(defines.events.on_research_finished, function(event)
	script.on_event(ontick, ticked)
end)
