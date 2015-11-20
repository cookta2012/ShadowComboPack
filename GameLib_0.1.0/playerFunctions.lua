 remote.add_interface("GameLib", {
	getPlayersOnline = function()
     	local tempOnline = {}
		for i = 1, #game.players, 1 do
			if game.players[i].connected then
				table.insert(tempOnline, game.players[i])
			end
		end
		return tempOnline
	end
 })