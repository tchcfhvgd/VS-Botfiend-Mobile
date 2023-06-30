local countdown = 0
function onCreate()   
	makeLuaSprite('BG', 'ritz/background', -500, -500);
	setScrollFactor('BG', 0.8, 1.0);
	scaleObject('BG', 1.0, 1.0);
	
	makeLuaSprite('FG', 'ritz/foreground', -500, -950);
	setScrollFactor('FG', 1.0, 1.0);
	scaleObject('FG', 1.0, 1.0);
	
	addLuaSprite('BG', false);
	addLuaSprite('FG', false);
	
end

function onStepHit()
if curStep == 876 then
triggerEvent('Hey!', 'GF', '');
setProperty("defaultCamZoom",0.6)
end
end