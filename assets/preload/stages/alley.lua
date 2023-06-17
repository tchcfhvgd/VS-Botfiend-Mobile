function onCreate()
    makeLuaSprite('Wall', 'botfriend/Wall', -500, -625);
	setScrollFactor('Wall', 1.0, 1.0);
	scaleObject('Wall', 1.0, 1.0);
	
	makeLuaSprite('Garbage Bin', 'botfriend/Garbage Bin', -500, 100);
	setScrollFactor('Garbage Bin', 1.0, 1.0);
	scaleObject('Garbage Bin', 1.0, 1.0);
	
	makeLuaSprite('Garbage Group 1', 'botfriend/Garbage Group 1', -500, 400);
	setScrollFactor('Garbage Group 1', 1.1, 1.0);
	scaleObject('Garbage Group 1', 1.0, 1.0);
	
	makeLuaSprite('Garbage Group 2', 'botfriend/Garbage Group 2', -550, 525);
	setScrollFactor('Garbage Group 2', 1.1, 1.0);
	scaleObject('Garbage Group 2', 1.0, 1.0);
	
	addLuaSprite('Wall', false);
	addLuaSprite('Garbage Bin', false);
	addLuaSprite('Garbage Group 1', true);
	addLuaSprite('Garbage Group 2', true);
end


function onUpdate(elapsed)
if curStep > 239 and curStep < 250 and songName == 'Cyberbolt' then
setProperty('camZooming',false)
elseif curStep > 250 and songName == 'Cyberbolt' then
setProperty('camZooming', true)
end
end