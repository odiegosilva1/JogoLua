local love = require "love"

local game = {
  state = {
     menu = true,
     paused = false,
     running = false,
     ended = false,

  }

}


local player = {
    radius = 20,
    x = 30,
    y = 30

}

function love.load()
  love.window.setTitle("Salve a Bola")

end


function love.update()
    player.X, player.y = love.mouse.getPosition()
end


function love.draw()
  love.graphics.circle("fill", player.x, player.y, player.radius)
end