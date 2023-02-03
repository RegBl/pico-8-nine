function set_state()
	for i,state in ipairs(gamestates) do
		if state==gamestate then
			update=updates[i]
			draw=draws[i]
		end
	end
end