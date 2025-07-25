--Global Variable / import module Love
_G.love = require("love")

 function love.load() -- Load the game
     love.graphics.setBackgroundColor(1, 1, 1)

-- Set player position
     _G.pacman = {}
     pacman.x = 200
     pacman.y = 250
     pacman.angle1 = 0.2
     pacman.angle2 = 2 * math.pi -0.2
     pacman.rotationSpeed = math.pi

-- Food
     _G.food = {
          x = 600,
          eaten = false
     }
 end

  function love.update(dt)  -- Update game - dt = Delta Time
     -- Rotate player
     if love.keyboard.isDown("down")  then 
        pacman.angle1 = pacman.angle1 + pacman.rotationSpeed * dt
        pacman.angle2 = pacman.angle2 + pacman.rotationSpeed * dt
     elseif love.keyboard.isDown("up") then
        pacman.angle1 = pacman.angle1 - pacman.rotationSpeed * dt
        pacman.angle2 = pacman.angle2 - pacman.rotationSpeed * dt       
     end

     -- Keyboard Input 
     if love.keyboard.isDown("a")  then 
          pacman.x = pacman.x - 1
     end

     if love.keyboard.isDown("d") then 
          pacman.x = pacman.x + 1
     end

     if love.keyboard.isDown("w") then
          pacman.y = pacman.y - 1
     end
     if love.keyboard.isDown("s") then
          pacman.y = pacman.y + 1
     end

-- Food 
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
    love.graphics.arc("fill", pacman.x, pacman.y, 60, pacman.angle1, pacman.angle2)

 end


