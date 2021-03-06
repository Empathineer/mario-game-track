--[[
    Super Mario Bros. Demo
    Author: Colton Ogden
    Original Credit: Nintendo

    Demonstrates rendering a screen of tiles.
]]

Class = require 'class'
push = require 'push'

-- require 'StateMachine'
require 'Animation'
require 'Map'
require 'Player'

-- close resolution to NES but 16:9
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- actual window resolution
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

-- seed RNG
math.randomseed(os.time())

-- makes upscaling look pixel-y instead of blurry
love.graphics.setDefaultFilter('nearest', 'nearest')

-- an object to contain our map data
map = Map()

-- performs initialization of all objects and data needed by program
function love.load()

    -- sets up a different, better-looking retro font as our default
    love.graphics.setFont(love.graphics.newFont('fonts/font.ttf', 8))
    love.window.setTitle('Super Mario 50')

    -- sets up virtual screen resolution for an authentic retro feel
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true
    })

    -- gameState = StateMachine {
    --     ['start'] = function () return end,
    --     ['play'] = function () return end,
    --     ['died'] = function () return end,
    --     ['completed'] = function () return end
    -- }

    gameState = 'start'
    
    love.keyboard.keysPressed = {}
    love.keyboard.keysReleased = {}
end

-- called whenever window is resized
function love.resize(w, h)
    push:resize(w, h)
end

-- global key pressed function
function love.keyboard.wasPressed(key)
    if (love.keyboard.keysPressed[key]) then
        return true
    else
        return false
    end
end

-- global key released function
function love.keyboard.wasReleased(key)
    if (love.keyboard.keysReleased[key]) then
        return true
    else
        return false
    end
end

-- called whenever a key is pressed
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    -- elseif love.keyboard.wasPressed('space') then
    --     gameState = 'play'
    -- elseif love.keyboard.isDown('left') then
    --     gameState = 'play'
    -- elseif love.keyboard.isDown('right') then
    --     gameState = 'play'
    end

    love.keyboard.keysPressed[key] = true
end

-- called whenever a key is released
function love.keyreleased(key)
    love.keyboard.keysReleased[key] = true
end

-- called every frame, with dt passed in as delta in time since last frame
function love.update(dt)
    map:update(dt)
    if gameState == 'start' then
        if love.keyboard.wasPressed('space') then
            gameState = 'play'
        elseif love.keyboard.isDown('left') then
            gameState = 'play'
        elseif love.keyboard.isDown('right') then
            gameState = 'play'
        end
    end
    
    if gamestate == 'completed' then
        love.graphics.setDefaultFilter('nearest', 'nearest')
        love.graphics.setFont(love.graphics.newFont('fonts/font.ttf', 15))
        love.graphics.clear(255/255, 153/255, 255/255, 255/255)
        love.graphics.printf('VICTORY!!! <3 <3 <3', 0, 20, VIRTUAL_WIDTH, 'center')
        
        love.event.quit('restart')
    end

   
    -- reset all keys pressed and released this frame
    love.keyboard.keysPressed = {}
    love.keyboard.keysReleased = {}
end

function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
  end

-- called each frame, used to render to the screen
function love.draw()
    -- begin virtual resolution drawing
    push:apply('start')

    -- clear screen using Mario background blue
    love.graphics.clear(108/255, 140/255, 255/255, 255/255)

    if gameState == 'start' then 
        love.graphics.printf('WELCOME TO MARIO', 0, 20, VIRTUAL_WIDTH, 'center')
    elseif gameState == 'play' then 
        love.graphics.printf('BEGIN EXPLORING', 0, 20, VIRTUAL_WIDTH, 'center')

    elseif gamestate == 'completed' then
        -- love.graphics.printf('VICTORY!!!!!!!', 0, 20, VIRTUAL_WIDTH, 'center')
        love.graphics.setDefaultFilter('nearest', 'nearest')
        love.graphics.setFont(love.graphics.newFont('fonts/font.ttf', 15))
        love.graphics.clear(255.255, 153/255, 255/255, 255/255)
        love.graphics.printf('VICTORY!!! <3 <3 <3', 0, 20, VIRTUAL_WIDTH, 'center')
        
    end
   
    -- renders our map object onto the screen
    love.graphics.translate(math.floor(-map.camX + 0.5), math.floor(-map.camY + 0.5))
    map:render()

    -- end virtual resolution
    push:apply('end')
end
