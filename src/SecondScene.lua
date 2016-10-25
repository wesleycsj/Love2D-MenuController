require 'Scene'

secondScene = Scene.new()

function secondScene:Draw()
  love.graphics.setBackgroundColor(255,0,0)
end

secondScene:AddScene(secondScene)