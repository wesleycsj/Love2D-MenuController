require 'Viewer'
require 'NewScene'
require 'SecondScene'

function love.load()

end

function love.draw()
  Viewer:Draw()
  
  if love.keyboard.isDown('a') then
    Viewer:setCurrentView(1)
  elseif love.keyboard.isDown('d') then
          Viewer:setCurrentView(2)
  end
end