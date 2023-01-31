function _init()
	srand(stat(95))
	tableau_deck = Deck:new({body=Deck.get_standard_deck()})

	player_one_hand = Deck:new({body=tableau_deck:draw_x_cards(6)})
	player_two_hand = Deck:new({body=tableau_deck:draw_x_cards(6)})

	crib = Deck:new()

	tableau_hand = Deck:new({body=Card:new{tableau_deck:draw_card()},is_tableau_hand=true})

	player_one = Player:new({name="player_one",hand=player_one_hand})
	player_two = Player:new({name="player_two",hand=player_two_hand})

	rnd(player_one.hand.body):toggle_selected()

	selected_index = player_one.hand:get_index_of_selected()
end

function _update()
	if btnp(1) then
		player_one.hand:select_next()
		selected_index = player_one.hand:get_index_of_selected()
	end
	if btnp(0) then
		player_one.hand:select_previous()
		selected_index = player_one.hand:get_index_of_selected()
	end
	if btnp(5) and player_one.hand:get_index_of_selected() then
		tableau_hand:pickup_card(player_one.hand:draw_selected_card())
	end
end

function _draw()
	cls(7)
	color(0)
	print(player_one.name.." score: "..player_one:get_score(),2,2)
	print(player_two.name.." score: "..player_two:get_score(),2,10)
	print(#tableau_hand.body,2,18)
	tableau_hand:draw(10,50)
	player_one.hand:draw(10,110)
end