Card = {
    suit = "",
    rank = 0,
    is_selected = false,
}

function Card.draw_facedown(x,y)
    fillp(0b0100101000011010)
    rectfill(x-3,y-3,x+30,y+40,Color.RED)
    fillp()
    rect(x-3,y-3,x+30,y+40,0)
end

function Card:draw(x,y)
    if self.is_selected then bgcolor = Color.DARK_GREY else bgcolor = Color.WHITE end
    rectfill(x-3,y-3,x+30,y+40,bgcolor)
    rect(x-3,y-3,x+30,y+40,0)
    if self.rank < 10 then
        print(self.rank,x+2,y)
    else
        print(self.rank,x+1,y)
    end
    if self.suit == "clubs" then
        pal(Color.DARK_GREY,Color.BLACK)
        suit_sprite = 3
    elseif self.suit == "diamonds" then
        suit_sprite = 2
    elseif self.suit == "hearts" then
        suit_sprite = 1
    elseif self.suit == "spades" then
        pal(Color.DARK_GREY,Color.BLACK)
        suit_sprite = 4
    end
    spr(suit_sprite,x,y+8)
    pal()
end

function Card:toggle_selected()
    self.is_selected = not self.is_selected
end

function Card:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

--0100
--1010
--0001
--1010