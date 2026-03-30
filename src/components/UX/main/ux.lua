-- ux.lua
local utf8 = require("utf8")

local mainMenuPanel = {
    width = 679, height = 783,
    x = 1241, y = -2,
}

local exitButton = {
    width = 679, height = 248,
    x = 1241, y = 781,
}

local startButton = {
    width = 437, height = 103,
    x = 1369, y = 103,
}

local settingButton = {
    width = 437, height = 103,
    x = 1369, y = 304,
}

local cardButton = {
    width = 437, height = 103,
    x = 1369, y = 503,
}



local decorExitOne = {
    width = 245, height = 173,
    x = 1675, y = 841,    
}

local decorExitTwo = {
    width = 237, height = 158,
    x = 1608, y = 837,
}

local decorPanelOne = {
    width = 858, height = 260,
    x = 1186, y = 21,
}

local decorPanelTwo = {
    width = 563, height = 285,
    x = 1249, y = 285,
}

local decorPanelThree = {
    width = 136, height = 550,
    x = 1784, y = 6,
}

local decorPanelFour = {
    width = 706, height = 100,
    x = 1214, y = 3,
}


local defaultFont = love.graphics.newFont("assets/font/UpheavalPro.ttf", 24)
local buttonFont = love.graphics.newFont("assets/font/UpheavalPro.ttf", 96)

local ux = {}

function ux.mainWindowAndSetting()
    love.window.setTitle("Warhammer: The Card Game")
    love.window.setFullscreen(true, "desktop")
    love.window.setMode(1920, 1080, {resizable=false, vsync=0, minwidth=1920, minheight=1080})
end

function ux.drawUI()

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorexit.png"), decorExitOne.x, decorExitOne.y, 0, decorExitOne.width / 245, decorExitOne.height / 173)

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorexittwo.png"), decorExitTwo.x, decorExitTwo.y, 0, decorExitTwo.width / 237, decorExitTwo.height / 158)

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorPanelTwo.png"), decorPanelTwo.x, decorPanelTwo.y, 0, decorPanelTwo.width / 563, decorPanelTwo.height / 285)

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/shapler.png"), mainMenuPanel.x, mainMenuPanel.y, 0, mainMenuPanel.width / 679, mainMenuPanel.height / 783)
    
    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/buttonexit.png"), exitButton.x, exitButton.y, 0, exitButton.width / 679, exitButton.height / 248)
    
    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/button.png"), startButton.x, startButton.y, 0, startButton.width / 437, startButton.height / 103)
    
    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/button.png"), settingButton.x, settingButton.y, 0, settingButton.width / 437, settingButton.height / 103)
    
    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/button.png"), cardButton.x, cardButton.y, 0, cardButton.width / 437, cardButton.height / 103)



    love.graphics.setFont(defaultFont)
    love.graphics.setColor {0.5, 0.5, 0.5}
    love.graphics.print("Warhammer: The Card Game", 1530, 1035)
--
--    love.graphics.setColor {1, 1, 1}
  --  love.graphics.setFont(buttonFont)
  --  love.graphics.print("EXIT", 1479, 877)
--
 --   love.graphics.setColor {1, 1, 1}
  --  love.graphics.setFont(buttonFont)
 --   love.graphics.print("PLAY", 1455, 125)
--
 --   love.graphics.setColor {1, 1, 1} 
 --   love.graphics.setFont(buttonFont)
--    love.graphics.print("SETTING", 1451, 340)

 --  love.graphics.setColor {1, 1, 1}
 --  love.graphics.setFont(buttonFont)
 --  love.graphics.print("CARD", 1486, 527) 

    
    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorPanelOne.png"), decorPanelOne.x, decorPanelOne.y, 0, decorPanelOne.width / 585, decorPanelOne.height / 260)

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorPanelThree.png"), decorPanelThree.x, decorPanelThree.y, 0, decorPanelThree.width / 136, decorPanelThree.height / 550)

    love.graphics.draw(love.graphics.newImage("assets/UI/mainmenu/decorPanelFour.png"), decorPanelFour.x, decorPanelFour.y, 0, decorPanelFour.width / 706, decorPanelFour.height / 100)


    
end

return ux
