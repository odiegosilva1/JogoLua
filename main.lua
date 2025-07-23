--Global Variable / import module Love
_G.love = require("love")

 function love.load() -- Load the game
      _G.number = 0

 end

  function love.update(dt) -- Update game - dt = Delta Time
      number = number + 1
 end

  function love.draw()
    love.graphics.print(number)

 end


