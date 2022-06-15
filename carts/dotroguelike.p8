pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--core

function _init()
	t=0
	dirx={-1,1,0,0,1,1,-1,-1}
	diry={0,0,-1,1,-1,1,1,-1}
	
	wlksnd={0,1,2}
	
	startgame()
end

function _update60()
	t+=1
	_upd()
end

function _draw()
	_drw()
end

function startgame()
	btnbuff=-1
	mob={}
	
	p_mob=addmob(1,1,1)
	p_t=0
	
	_upd=update_game
	_drw=draw_game
end
-->8
--update

function update_game()
	buffbtn()
	dobtn(btnbuff)
	btnbuff=-1
end

function update_pturn()
	buffbtn()	
	p_t=min(p_t+0.125,1)
	
	p_mob.mov(p_mob,p_t)
	
	if (p_t==1)	_upd=update_game
end

function buffbtn()
	if (btnbuff==-1) btnbuff=getbtn()
end

function getbtn()
	for i=0,5 do
		if (btnp(i)) return i
	end
	return -1
end

function dobtn(btn)
	if (btn<0) return
	if (btn<4) moveplayer(dirx[btn+1],diry[btn+1])
end
-->8
--draw

function draw_game()
	cls()
	--draw map
	test_level()
	draw_mob(p_mob)
end

function draw_mob(m)
	local col=10
	pset(m.x,m.y,col)
end

function test_level()
	color(5)
	rectfill(0,0,127,127)
	color(0)
	rectfill(1,1,10,10)
	rectfill(12,1,21,5)
	rectfill(4,21,8,25)
	pset(11,3)
	line(6,11,6,20)
	line(6,15,16,15)
	line(16,15,16,6)
end
-->8
--gameplay

function moveplayer(dx,dy)
	local destx,desty=p_mob.x+dx,p_mob.y+dy
	
	if iswalkable(destx,desty) then
		sfx(flr(rnd(wlksnd)))
		mobwalk(p_mob,dx,dy)
		p_t=0
		_upd=update_pturn
	else
	 mobbump(p_mob,dx,dy)
		p_t=0
		sfx(3)
		_upd=update_pturn
	end
end

function iswalkable(x,y,mode)
	if (mode==nil) mode=""
	if inbounds(x,y) then
		local dot=pget(x,y)
		return not (dot==5)
	end
	return false
end

function inbounds(x,y)
	return not (x<0 or y<0 or x>127 or y>127)
end
-->8
--ui
-->8
--mobs

function addmob(typ,mx,my)
	local m={
		x=mx,
		y=my,
		flash=0,
	}
	add(mob,m)
	return m
end

function mobwalk(mb,dx,dy)
	mb.x+=dx
	mb.y+=dy
	mb.sox,mb.soy=-dx,-dy
	mb.ox,mb.oy=mb.sox,mb.soy
	mb.mov=mov_walk
end

function mobbump(mb,dx,dy)
	mb.sox,mb.soy=dx,dy
	mb.ox,mb.oy=0,0
	mb.mov=mov_bmp
end

function mov_walk(mb,at)
	mb.ox=mb.sox*(1-at)
	mb.oy=mb.soy*(1-at)
end

function mov_bmp(mb,at)
	local tme=at
	
	if (at>0.5) tme=1-at
	
	mb.ox=mb.sox*tme
	mb.oy=mb.soy*tme
end
-->8
--tools


__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100001c05011050100500500000700000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001b05015050120500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001b05016050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00010000170501805017050110500a050030500105000050020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
