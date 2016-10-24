require 'Viewer'

function love.load()
  view = Viewer.new()
end

function love.draw()
    --love.graphics.print("Hello World", 400, 300)
  view:Draw()
  
  if love.keyboard.isDown('a') then
    view:setCurrentView(1)
  elseif love.keyboard.isDown('d') then
          view:setCurrentView(2)
  end
  
  love.graphics.print("Current View Number: " .. view:getCurrentView(), 0,0)
end