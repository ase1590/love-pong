--[[
text toggler script

add ' require "toggletext" ' without the single quotes to the top of your main.lua
add toggletext() under your love.draw function

change the togglekey variable inside the single quotes 
to choose the key to toggle with
then enjoy
--]]

togglekey = 'w'
showtext = false

function love.keypressed(key)
	if key == togglekey and showtext == false then
		showtext = true
	elseif key == togglekey and showtext == true then
		showtext = false
		
	end
end


function showlist()
	if showtext == true then
		love.graphics.setFont(smaller)
		love.graphics.print("ball vy: " .. ball.vy, 150, 150)
		love.graphics.print("ball vx: " .. ball.vx, 150, 175)
		love.graphics.print("ball x: " .. ball.x, 150, 200)
		love.graphics.print("ball y: " .. ball.y, 150, 225)
		love.graphics.print("ball-ai abs " .. math.abs(ball.y - ai.y), 150, 250)
		love.graphics.print("ai y: " .. ai.y, 150, 275)
		love.graphics.print(os.date(), 150, 300)
	elseif showtext == false then 
		love.graphics.print("", 150, 175)
	end
end
