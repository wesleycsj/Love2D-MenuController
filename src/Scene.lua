require 'Viewer'

Scene = {}
Scene.__index = Scene

function Scene.new()
  local o = {}
  setmetatable(o, Scene)
  return o
end

function Scene:AddScene(o)
  Viewer:AddView(o)
end