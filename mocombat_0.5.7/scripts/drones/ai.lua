local KTE,RegKey = MoEntity.KeyToEnt,MoEntity.EntToKey
local Drones = Drones --Localise

Drones.CommandFuncs = {}

function ManageCombatDroneAi()
	--MoMisc.Print("Drone Think")
	MoEntity.CallLoop("advcomdrones",function(data)
		local E = KTE(data.entity)
		if not E or E==nil or not E.valid then return false end
		--MoMisc.Print("Test")
		if data.extra.T < game.tick then
			--MoMisc.Print("Think")
			local Wait = 0
			local CMD = data.extra.CMD
			
			--Give the unit order if possible.
			if CMD.C~=nil then
				local Targ = CMD.D.T
				if not Targ or Targ and Targ.valid then --Hack around
					local Distance = (util.distance(CMD.P,E.position)/10) --Add calibration based on bot movement speed.
					--MoMisc.PrintTable(CMD.C)
					E.set_command(CMD.C) 
					data.extra.T = game.tick+(Distance*60)
				end
			end
			
			--Update the map where we are.
			E.force.chart(E.surface,{MoEntity.addtoentpos(E,{y=-5,x=-5}),MoEntity.addtoentpos(E,{y=5,x=5})})

			local CmdFunc = Drones.CommandFuncs[CMD.F or "None"]
			if CmdFunc then
				CmdFunc(E,CMD.D)
			end
			
			--Incase the drone was removed.
			if CMD.D.Removed then
				return false
			end
			
			--Swap the new command out.
			if CMD.D.NewCMD then
				data.extra.CMD = CMD.D.NewCMD
				if CMD.D.NewThk then
					data.extra.T = 0
				end
			end
		end
		
		return true
	end)
end
MoTimers.CacheFunction("ManageCombatDroneAi",ManageCombatDroneAi)

function ManageCombatDronePosts()
	MoEntity.CallLoop("combatroboticspost",function(data)
		local E = KTE(data.entity)
		if E==nil or not E.valid then return false end
		local Enemy = Drones.NearbyEnemy(E.surface,E.position,200)
		if Enemy and Enemy.valid then --Add alive check if this is buggy
			--MoMisc.Print("Enemy Detected! "..tostring(Enemy).." Distance: "..(util.distance(E.position,Enemy.position)))
			local DCount = Drones.ContainsDrones(E)
			if DCount ~= nil then
				for I=1,DCount.A do
					Drones.SpawnDrone(E,DCount.T,Drones.GetAttackCommand(Enemy))
					E.get_inventory(1).remove({name=DCount.T,count=1})
				end
			end
		end
		
		return true
	end)
end
MoTimers.CacheFunction("ManageCombatDronePosts",ManageCombatDronePosts)

function Drones.CreateCommandFunc(Name,Function)
	Drones.CommandFuncs[Name]=Function
end

Drones.CreateCommandFunc("None",function(Drone,Data) end)
