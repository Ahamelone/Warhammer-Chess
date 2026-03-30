local utf8 = require("utf8")
local ux = require("src/components/UX/main/ux")
local animation = require("src/components/animation/main/animation")
local settingsMainMenu = require("/src/components/pages/settingsMainMenu")

function love.load()
    ux.mainWindowAndSetting()
    animation.loadFrames()
end

function love.update(dt)
    animation.update(dt)
end

function love.draw()
    animation.draw()
    ux.drawUI()
end


