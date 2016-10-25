require 'Viewer'
function love.load()
  scenes = {'NewScene','SecondScene'}
  for k,value in pairs(scenes) do
    require('scenes/' .. value)
  end
end

function love.draw()
  
  
  Viewer:Draw()
  
  if love.keyboard.isDown('a') then
    Viewer:setCurrentView(1)
  elseif love.keyboard.isDown('d') then
          Viewer:setCurrentView(2)
  end
end