local bump = require "lib/bump/bump"
Object = require "lib/classic/classic"
require 'src/GameManager'
world = bump.newWorld()
require "src/player"
function love.load(arg)
  gm = GameManager(gm)
  gm.createCollider(gm, 50, 200, 200, 50)
  Player = player.new(300, 200)
  world:add(Player, Player.x, Player.y, Player.w, Player.h)
end

function love.update(dt)
  gm.update(gm, dt)
  Player.update(dt)

end

function love.draw()
  gm.draw(gm)
  Player.draw()
end
