--Global Variable / import module Love
_G.love = require("love")

 function love.load() -- Load the game
     love.graphics.setBackgroundColor(1, 1, 1)
-- Set player position
     _G.pacman = {}
     pacman.x = 200
     pacman.y = 250
     pacman.eat = false

     _G.food_X = 600

 end

  function love.update(dt)  -- Update game - dt = Delta Time
     pacman.x = pacman.x + 1

     if pacman.x >= food_X + 20 then
          pacman.eat = true
     end     
       
 end

  function love.draw()
     if not pacman.eat then 
          love.graphics.setColor(0, 0, 0) 
          love.graphics.rectangle("fill", food_X, 200, 70, 70)
     end

 

    love.graphics.setColor(0, 0, 0)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5)

 end


