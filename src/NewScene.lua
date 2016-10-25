require 'Scene'

NewScene = Scene.new()


function NewScene:Draw()
  love.graphics.setBackgroundColor(0,0,255)
  love.graphics.print("Hello first Scene",50,50)
end


NewScene:AddScene(NewScene)
