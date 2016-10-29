-- require the Viewer library to the my variable
viewerManager = require 'Viewer'

function love.load()
    -- add some Scenes to the viewerManager
    viewerManager:AddScenes({'NewScene','SecondScene'})
    viewerManager:Load(1) -- The number is the fistScene to be loaded, in this case, 1 = 'NewScene'
end

function love.draw()
  viewerManager:Draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == 'a' then
      viewerManager:setCurrentView("previous")
    elseif key == 'd' then
      viewerManager:setCurrentView("next")
    end
end
