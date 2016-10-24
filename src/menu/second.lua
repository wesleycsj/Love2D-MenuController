SecondView = {}
SecondView.__index = SecondView

function SecondView.new()
  local o = {}
  setmetatable(o, SecondView)
  return o
end

function SecondView:Draw()
  love.graphics.print("Esta é a view Secundaria", 300,100)
end