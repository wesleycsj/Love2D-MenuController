FirstView = {}
FirstView.__index = FirstView

function FirstView.new()
  local o = {}
  setmetatable(o, FirstView)
  return o
end

function FirstView:Draw()
  love.graphics.print("Essa e a firstView", 300,100)
end