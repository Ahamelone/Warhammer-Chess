-- animation.lua
local animation = {}

local frames = {}
local currentFrame = 1
local totalFrames = 50
local timer = 0
local speed = 8
local animationRunning = true

function animation.loadFrames()
    for i = 1, totalFrames do
        local filename = string.format("assets/UI/mainmenu/background/%d.png", i)
        table.insert(frames, love.graphics.newImage(filename))
    end
end

function animation.update(dt)
    if not animationRunning then return end

    timer = timer + dt * speed
    if timer >= totalFrames then
        timer = 0
    end
    
    currentFrame = math.floor(timer) + 1
end

function animation.draw()
    love.graphics.draw(frames[currentFrame], 0, 0, 0, 1920 / frames[currentFrame]:getWidth(), 1080 / frames[currentFrame]:getHeight())
end

return animation
