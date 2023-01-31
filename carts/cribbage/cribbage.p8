pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
--main
#include main.p8
#include draw.p8
#include models/card.p8
#include models/deck.p8
#include models/player.p8
#include util/color.p8

--✽
--☉
__gfx__
00000000088008800008800000555500000550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000888888880088880000555500005555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700888888880888888005055050055555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000888888888888888855555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000088888808888888855555555555555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700088888800888888005500550055005500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888000088880000055000000550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000880000008800000555500005555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77000707770007070700070007777770070077000777777007700770070007000777777777000777777777777777777777777777777777777777777777777777
77070707770707070707770707777707070707077777770777077707070707077770777777070777777777777777777777777777777777777777777777777777
77000707770007000700770077777707070707007777770007077707070077007777777777070777777777777777777777777777777777777777777777777777
77077707770707770707770707777707070707077777777707077707070707077770777777070777777777777777777777777777777777777777777777777777
77077700070707000700070707000700770707000777770077700700770707000777777777000777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77000707770007070700070007777700070707700777777007700770070007000777777777000777777777777777777777777777777777777777777777777777
77070707770707070707770707777770770707070777770777077707070707077770777777070777777777777777777777777777777777777777777777777777
77000707770007000700770077777770770707070777770007077707070077007777777777070777777777777777777777777777777777777777777777777777
77077707770707770707770707777770770007070777777707077707070707077770777777070777777777777777777777777777777777777777777777777777
77077700070707000700070707000770770007007777770077700700770707000777777777000777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77070777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77070777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77000777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77770777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77770777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777770000000000000000000000000000000000000000000000000000000000000000000077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777707077777707777000777777077770007777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777707077777707777770777777077777707777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777700077777707777000777777077777707777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777077777707777077777777077777707777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777077777707777000777777077777707777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777778877777707777700777777077770000777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777788887777707777000077777077770000777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777888888777707770000007777077707007077777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080778888888877707700000000777077000000007777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800778888888877707700000000777077000000007777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777888888777707770077007777077700770077777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777788887777707777700777777077777007777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777778877777707777000077777077770000777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770008800777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770880080777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777
77777770000000000000000000000000000000000000000000000000000000000000000000077777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777
77777770000000000000000000000000000000000000000000000000000000000000077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777700077777707777070777777077700770007777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777707077777707777070777777077770777707777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777700077777707777000777777077770770007777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777077777707777770777777077770770777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777077777707777770777777077700070007777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777700007777707777000077777077777887777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777700007777707777000077777077778888777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777070070777707770700707777077788888877777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770770000000077707700000000777077888888887777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770770000000077707700000000777077888888887777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777007700777707770077007777077788888877777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777770077777707777700777777077778888777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777700007777707777000077777077777887777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
77777770777777777777707777777777777077777777777777777777777777777777077777777777777777777777777777777777777777777777777777777777
