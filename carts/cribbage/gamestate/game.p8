function init_game()
end

function update_game()
    if btnp(1) then
		player_one.hand:select_next()
		selected_index = player_one.hand:get_index_of_selected()
	end
	if btnp(0) then
		player_one.hand:select_previous()
		selected_index = player_one.hand:get_index_of_selected()
	end
	if btnp(5) and player_one.hand:get_index_of_selected() and (not player_one_has_played) then
		tableau_hand:pickup_card(player_one.hand:draw_selected_card())
		sfx(rnd(card_sounds))
		player_one_has_played = true
		delay_start = time()
	end
	if (time() - delay_start == 1) and player_one_has_played then
		tableau_hand:pickup_card(player_two.hand:draw_card())
		sfx((rnd(card_sounds)))
		player_one_has_played = false
	end
end

function draw_game()
    cls(Color.LIGHT_GREY)
	draw_board()
	color(0)
	-- print(player_one.name.." score: "..player_one:get_score(),2,2)
	-- print(player_two.name.." score: "..player_two:get_score(),2,10)
	-- print(tableau_hand.body[#tableau_hand.body].rank,2,18)
	tableau_hand:draw(10,50)
	player_one.hand:draw(10,110)
end

function draw_board()
	player_colors={Color.RED,Color.BLUE}
	rectfill(6,1,120,24,Color.BROWN)
	for i=0,2 do
		rectfill(9,4+i*6,117,6+i*6,Color.RED)
		rectfill(9,7+i*6,117,9+i*6,Color.BLUE)
		for j=0,8 do
			for k=0,4 do
				pset(11+j*12+k*2,5+i*6,Color.BLACK)
				pset(11+j*12+k*2,8+i*6,Color.BLACK)
			end
		end
	end
end