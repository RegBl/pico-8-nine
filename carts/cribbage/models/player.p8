Player = {
    name = '',
    score = 0,
    hand = {},
}

function Player:set_name(name)
    self.name = name
end

function Player:get_name()
    return self.name
end

function Player:get_score()
    return self.score
end

function Player:raise_score_by(amount)
    self.score = self.score + amount
end

function Player:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end