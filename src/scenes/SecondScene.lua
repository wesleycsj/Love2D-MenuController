require '../Scene'

secondScene = Scene.new()
secondScene.name = 'SecondScene'

function secondScene:Draw()
  love.graphics.setBackgroundColor(255,0,0)
  love.graphics.print("Scene:SecondScene",50,50)
end

secondScene:AddScene(secondScene)