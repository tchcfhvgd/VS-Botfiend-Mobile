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
	
	makeLuaSprite('blue', nil, -500, -100);
	makeGraphic('blue', 3000, 1080, 'B7BBF0')
	setBlendMode('blue', 'multiply')
	
	makeAnimatedLuaSprite('rains', 'botfriend/rain', -2000, -1500);
	setScrollFactor('rains', 1.0, 1.0);
	scaleObject('rains', 1.0, 1.0);
	addAnimationByPrefix('rains', 'raining', 'Rain', 24, true)
	playAnim('rains', 'raining')
	setObjectCamera('rains', 'hud')
	setProperty('rains.alpha', 0.20);
	setBlendMode('rains', 'add')
	
	addLuaSprite('Wall', false);
	addLuaSprite('Garbage Bin', false);
	addLuaSprite('Garbage Group 1', true);
	addLuaSprite('Garbage Group 2', true);
end

function onCreatePost()--rain is there from the start on future link
    if songPath == 'future-link' then
	addLuaSprite('blue', true);
	addLuaSprite('rains', true);
    end
end

function onUpdate(elapsed)
if curStep > 239 and curStep < 250 and songName == 'Cyberbolt' then
setProperty('camZooming', false)
elseif curStep > 250 and curStep < 765 and songName == 'Cyberbolt' then
setProperty('camZooming', true)
elseif curStep > 765 and curStep < 782 and songName == 'Cyberbolt' then
setProperty('camZooming', false)
elseif curStep > 782 and curStep < 1530 and songName == 'Cyberbolt' then
setProperty('camZooming', true)
elseif curStep > 1530 and curStep < 1550 and songName == 'Cyberbolt' then
setProperty('camZooming', false)
print('faggot');
end
end