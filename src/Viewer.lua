require 'menu/FirstView'
require 'menu/SecondView'

Viewer = {currentView = 1}
Viewer.__index = Viewer

views = {}

function Viewer:Init()
  table.insert(views, FirstView.new())
  table.insert(views, SecondView.new())
end

Viewer:Init()

function Viewer:new()
  local o = {}
  setmetatable(o, Viewer)
  return o
end

function Viewer:Draw()
  views[self.currentView]:Draw()
end
function Viewer:getCurrentView()
  return self.currentView
end

function Viewer:setCurrentView(newView)
  self.currentView = newView
end