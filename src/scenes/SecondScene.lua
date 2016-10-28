-- obrigatory:
local Scene = {}
Scene.__index = Scene
function Scene:New ()
    local nw = {}
    setmetatable(nw, Scene)
    return nw
end

-- Your Scene functions, have fun :)
function Scene:Load ()
end

function Scene:Draw()
    love.graphics.setBackgroundColor(150,20,20)
    love.graphics.print("Scene: SecondScene",50,50)
end

-- This return is also necessary
return Scene:New()
