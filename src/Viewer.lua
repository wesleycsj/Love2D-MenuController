-- All object creation of view
-- Dont touch it
local Viewer = { currentView = 1 }

function Viewer:New()
  local nw = {}

  self.views = {}
  self.actualView = {}
  setmetatable(nw, {__index = self})

  return nw
end

-- Viewer functions called on love callbacks:

function Viewer:Load(fistScene)
    self.actualView = self.views[fistScene]
  self.actualView:Load()
end

function Viewer:Draw()
  self.actualView:Draw()
end

-- Viewer functions

function Viewer:getCurrentView()
  return self.currentView
end

function Viewer:setCurrentView(goTo)
    local nextCurrentView = self:getCurrentView()

    if goTo == "next" then
        nextCurrentView = nextCurrentView == #self.views and 1 or nextCurrentView + 1 -- This is a ternary operation, see https://blogs.love2d.org/content/l%C3%B6vely-code-01-ternary-operations to details
    elseif goTo == "previous" then
        nextCurrentView = nextCurrentView == 1 and #self.views or nextCurrentView - 1
    else
        if goTo >= 1 and goTo <= #self.views then
            nextCurrentView = goTo
        else
            print("Viewer: the parameter used in :SwitchView() must be a string 'next' or 'previous' or a integer number >= 1 and <= " .. tostring(#self.views))
        end
    end

    self.currentView = nextCurrentView
    self.actualView = self.views[self.currentView]
    self.actualView:Load()
end

function Viewer:AddScene(sceneFileName)
  table.insert(self.views, assert( love.filesystem.load( "scenes/" .. sceneFileName .. ".lua" ) )())
end

function Viewer:AddScenes (sceneFileNames)
    for i=1,#sceneFileNames do
        table.insert(self.views, assert( love.filesystem.load( "scenes/" .. sceneFileNames[i] .. ".lua" ) )())
    end
end

function Viewer:getViews()
  local v = {}
  for key,value in ipairs(self.views) do
    table.insert(v, value.name)
  end
  return v
end

return Viewer:New()
