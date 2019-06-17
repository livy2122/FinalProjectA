

local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

 
-- fade
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
  function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
 -- local function showScene1 ()
 --       local options = {
 --             effect = "fade",
 --             time = 500
 --    }         
 --   composer.gotoScene( "scene1", options)
 -- end
-- show()

-- show()
   


function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
   
     local lol = display.newImageRect( "snep.PNG", 2000, 2000 )
        lol.x = 800
        lol.y = display.contentHeight - 1050


              
 
        -- Code here runs when the scene is still off screen (but is about to come on screen)
       local MyText = display.newText( "sdfgrsg", 380, 640, native.systemFont, 48)
       MyText:setFillColor(1, 1, 1)
       sceneGroup:insert(MyText)
       MyText:toFront()

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
           timer.performWithDelay(3000, showScene1)
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
math.randomseed( 2222 )






 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene