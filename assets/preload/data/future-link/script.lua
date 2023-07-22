local cool = false
function onUpdate()
    if cool then
        if keyJustPressed('accept') then
            endSong()
        end
    end
end

function spawnEndCard()
    playMusic('breakfast', 1)
    makeAnimatedLuaSprite('end', 'botfriend/Botfiend_End_Card', 0, 0);
	addAnimationByPrefix('end', 'lol', 'Ending Card', 24, true)
    setObjectCamera('end', 'other');
    scaleLuaSprite('end', 1.0, 1.0);
	makeLuaSprite('black', nil, 0, 0);
    makeGraphic('black', screenWidth * 5, screenHeight * 5, '000000');
	setObjectCamera('black', 'other');
	addLuaSprite('black', true);
	addLuaSprite('end', true);
	playAnim('end', 'lol')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'sus' then
	addLuaSprite('boom', true);
	playSound('explosion');
	playAnim('boyfriend', 'hurt', true)
	setProperty('boyfriend.specialAnim', true)
	end
	if tag == 'die' then
	playAnim('dad', 'bout', true)
	setProperty('dad.specialAnim', true)
		playAnim('boyfriend', 'excited', false)
	    setProperty('boyfriend.specialAnim', true)
		playAnim('gf', 'shit', false)
	    setProperty('gf.specialAnim', true)
	end
	if tag == 'endcard' then
	stopSound('explosion');
	spawnEndCard()
	cool = true
	end
end

function onEndSong()
        doTweenAlpha('hudgobye', 'camHUD', 0, 0.5, 'easeIn')
		if not cool and isStoryMode then
			playSound('uh oh');
			playAnim('gf', 'fuck', false)
	        setProperty('gf.specialAnim', true)
			playAnim('boyfriend', 'looking', false)
	        setProperty('boyfriend.specialAnim', true)
			runTimer('die', 3.85);
			runTimer('sus', 8);
			runTimer('endcard', 8.5);
			return Function_Stop;
        end
        return Function_Continue;
end