require("config")

function check_queue(force)
	for i, tech in ipairs(global.researchQ[force.name]) do
		if force.technologies[tech] then	--checks if the technology still exsists 
			for _, pre in pairs(force.technologies[tech].prerequisites) do
				if not pre.researched then		--checks if the prerequisite is already researched
					local isInQueue = false
					for j = 1, i do	-- checks if the prerequisite is in the queue before the technology
						if pre.name == global.researchQ[force.name][j] then 	
							isInQueue = true 
							break
						end
					end
					if not isInQueue then remove_research(force, tech) end	
				end
			end
		else
			remove_research(force, tech)	
		end
	end
end

function add_research(force, research_name)
	for _, pre in pairs(force.technologies[research_name].prerequisites) do --checks if the prerequisites are allrady researched, if not call this function for those techs first.
		if not pre.researched then add_research(force, pre.name) end
	end
	local isInList = false		--check if the technology to add is already in the queue
	for _, tech in ipairs(global.researchQ[force.name]) do
		if tech == research_name then isInList = true end
	end
	if not isInList and not force.technologies[research_name].researched then
		table.insert(global.researchQ[force.name], research_name)
	end
end

function remove_research(force, research_name)	
	local research_index = nil
	for i, tech in ipairs(global.researchQ[force.name]) do	--find the table index corresponding to the technology
		if tech == research_name then 
			research_index = i 
			break
		end
	end
	table.remove(global.researchQ[force.name], research_index)
	for index, _ in pairs(force.players) do
		if global.offset_queue[index] > 0 then global.offset_queue[index] = global.offset_queue[index] -1 end
	end
	check_queue(force)
	if force.current_research == research_name and global.researchQ[force.name][1] ~= nil then force.current_research = global.researchQ[force.name][1] end --starts the new researchers for the new top item in the queue
end

function up(force, research_name)
	local research_index = nil
	for i, tech in ipairs(global.researchQ[force.name]) do	--find the table index corresponding to the technology
		if tech == research_name then 
			research_index = i 
			break
		end
	end
	if research_index > 1 then --not on top of the queue
		local canMoveUp = true
		for _, pre in pairs(force.technologies[research_name].prerequisites) do
			if pre.name == global.researchQ[force.name][research_index-1] then canMoveUp = false end --checks if the item is a prerequisite to the item above it
		end
		if canMoveUp then
			table.remove(global.researchQ[force.name], research_index)
			table.insert(global.researchQ[force.name], research_index-1, research_name)
		end
	else
		if force.current_research.name ~= research_name then force.current_research = research_name end	--starts the new top research
	end
end

function down(force, research_name)
	local research_index = nil
	for i, tech in ipairs(global.researchQ[force.name]) do	--find the table index corresponding to the technology
		if tech == research_name then 
			research_index = i 
			break
		end
	end
	if research_index < #global.researchQ[force.name] then --thus not at the end of the queue
		local canMoveDown = true
		for _, pre in pairs(force.technologies[global.researchQ[force.name][research_index+1]].prerequisites) do --checks if the item above it is it's prerequisites
			if pre.name == research_name then canMoveDown = false end
		end
		if canMoveDown then
			table.remove(global.researchQ[force.name], research_index)
			table.insert(global.researchQ[force.name], research_index+1, research_name)
		end
	end
end

function updateQ(force)
	for index, player in pairs(force.players) do
		if player.gui.center.Q.current_q then
			if player.gui.center.Q.current_q.list then player.gui.center.Q.current_q.list.destroy() end
			
			local list = player.gui.center.Q.current_q.add{type = "flow", name = "list", style = "rq-flow", direction = "vertical"}
			
			if not global.researchQ[force.name][1] then
				list.add{type = "label", name = "empty", caption = "No research queued"} --if the queu is empty
			else
				for i, tech in ipairs(global.researchQ[force.name]) do
					if global.offset_queue[index] < i and i <= (rq.q_per_page+global.offset_queue[index]) then
						local frame = list.add{type = "frame", name = "rq"..tech.."frame", style = "rq-frame"} --create a frame for each item in the queue
						
						frame.add{type = "frame", name = "rq"..tech.."icon", style = "rq-tech"..tech.."large"} --adds a big icon in the frame
						
						local description = frame.add{type = "frame", name = "rq"..tech.."description", style = "tooltip_frame_style", direction = "vertical"} -- adds a description frame in the frame
						description.style.minimal_width = 175
						description.add{type = "label", name = "rq"..tech.."name", caption = force.technologies[tech].localised_name, style = "description_label_style"}	-- places the name of the technology
						
						local buttons = frame.add{type = "table", name = "rq"..tech.."buttons", style = "slot_table_style", colspan = 1}	--adds the up/cancel/down buttons
						buttons.add{type = "button", name = "rq".."upbutton"..tech, style = "rq-up-button"}
						buttons.add{type = "button", name = "rq".."cancelbutton"..tech, style = "rq-cancel-button"}
						buttons.add{type = "button", name = "rq".."downbutton"..tech, style = "rq-down-button"}
						
					elseif i == global.offset_queue[index] then	--adds scrollbuttons to the top and bottom of the list
						list.add{type = "button", name = "rqscrollqueueup", style = "rq-up-button"}
					elseif i > rq.q_per_page+global.offset_queue[index] then
						list.add{type = "button", name = "rqscrollqueuedown", style = "rq-down-button"}
						break
					end
				end
			end
		end
	end
end