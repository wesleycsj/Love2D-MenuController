-- All object creation of view
-- Dont touch it
Viewer = { currentView = 1 }
Viewer.__index = Viewer

views = {}

function Viewer.new()
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

function Viewer:AddView(o)
  table.insert(views, o)
end

function Viewer:getViews()
  local v = {}
  for key,value in ipairs(views) do
    table.insert(v, value.name)
  end
  return v
end