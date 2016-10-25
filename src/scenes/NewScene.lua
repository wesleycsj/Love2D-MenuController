require '../Scene'

NewScene = Scene.new()
NewScene.name = 'NewScene'

function NewScene:Draw()
  love.graphics.setBackgroundColor(0,0,255)
  love.graphics.print("Scene:NewScene",50,50)
end


NewScene:AddScene(NewScene)
