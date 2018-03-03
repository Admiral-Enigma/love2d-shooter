player = {}

function player.new (x, y)
  player.x = x
  player.y = y
  player.w = 32
  player.h = 32
  player.speed = 200
  return player
end

function player.update(dt)
  local speed = player.speed

  local dx, dy = 0, 0
  if love.keyboard.isDown('d') then
    dx = speed * dt
  elseif love.keyboard.isDown('a') then
    dx = -speed * dt
  end
  if love.keyboard.isDown('s') then
    dy = speed * dt
  elseif love.keyboard.isDown('w') then
    dy = -speed * dt
  end

  if dx ~= 0 or dy ~= 0 then
    local cols
    player.x, player.y, cols, cols_len = world:move(player, player.x + dx, player.y + dy)
  end
end

function player.draw()
  love.graphics.rectangle("fill", player.x, player.y, player.w, player.h)

end
