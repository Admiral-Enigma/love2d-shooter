GameManager = Object:extend()

function GameManager.new(self, bWorld)
  self.rooms = {}
  self.currentRoom = nil
  self.solidColliders = {}
  self.bumpWorldObject = bWorld or world
end

function GameManager.createCollider(self, x, y, w, h)
  local collider = {}
  collider.x = x
  collider.y = y
  collider.w = w
  collider.h = h
  self.bumpWorldObject:add(collider, collider.x, collider.y, collider.w, collider.h)
  table.insert(self.solidColliders, collider)
end

function GameManager.draw(self)
  for k,v in ipairs(self.solidColliders) do
    love.graphics.rectangle('line', v.x, v.y, v.w, v.h)
  end
end

function GameManager.update(self, dt)
end
