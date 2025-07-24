--Global Variable / import module Love
_G.love = require("love")

 function love.load() -- Load the game
     love.graphics.setBackgroundColor(1, 1, 1)

-- Set player position
     _G.pacman = {}
     pacman.x = 200
     pacman.y = 250

-- Food
     _G.food = {
          x = 600,
          eaten = false
     }
 end

  function love.update(dt)  -- Update game - dt = Delta Time
     pacman.x = pacman.x + 1

     if pacman.x >= food.x + 20 then
          food.eaten = true
     
     end     
 end


  function love.draw()
     if not food.eaten then 
          love.graphics.setColor(0, 0, 0) 
          love.graphics.rectangle("fill", food.x, 200, 70, 70)
     end

 

    love.graphics.setColor(0, 0, 0)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5)

 end


