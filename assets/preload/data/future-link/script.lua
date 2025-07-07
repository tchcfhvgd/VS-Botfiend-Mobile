local stops = 0
local endstops = 0
local cool = false
local allowCountdown = false
function onUpdate()
    if cool then
        if keyJustPressed('accept') or touchPadJustPressed('A') then
            endSong()
        end
    end
end

function onCreatePost()
   if isStoryMode then
    makeLuaSprite('white1', nil, -500, -200);
	makeGraphic('white1', screenWidth * 4, screenHeight * 4, 'FFFFFF');
    setProperty("camHUD.alpha", 0)
	setProperty("white1.alpha", 0)
	addLuaSprite('white1', true);
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
	
	addTouchPad("NONE", "A");
	addTouchPadCamera();
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'start' then
	doTweenAlpha('hudgohi', 'camHUD', 1, 0.5, 'easeIn');
	allowCountdown = true;
	startCountdown()
	removeLuaSprite('white1', true);
	end
	if tag == 'thunder' then
	    playSound('thunder_1');
		setProperty("white1.alpha", 255);
		doTweenAlpha('TEST', 'white1', 0, 0.5, 'linear');
	end
	if tag == 'thunder2' then
		setProperty("white1.alpha", 255);
		doTweenAlpha('TEST', 'white1', 0, 0.5, 'linear');
	end
	if tag == 'sus' then
	addLuaSprite('boom', true);
	playSound('explosion');
	playAnim('boyfriend', 'hurt', true);
	setProperty('boyfriend.specialAnim', true);
	end
	if tag == 'die' then
	playAnim('dad', 'bout', true);
	setProperty('dad.specialAnim', true);
		playAnim('boyfriend', 'excited', false);
	    setProperty('boyfriend.specialAnim', true);
		playAnim('gf', 'shit', false);
	    setProperty('gf.specialAnim', true);
	end
	if tag == 'endcard' then
	stopSound('explosion');
	spawnEndCard()
	cool = true
	end
end

function onEndSong()
        doTweenAlpha('hudgobye', 'camHUD', 0, 0.5, 'easeIn');
		if not cool and isStoryMode then
			playSound('uh oh');
			playAnim('gf', 'fuck', false);
	        setProperty('gf.specialAnim', true);
			playAnim('boyfriend', 'looking', false);
	        setProperty('boyfriend.specialAnim', true);
			runTimer('die', 3.85);
			runTimer('sus', 8);
			runTimer('endcard', 8.5);
			return Function_Stop;
        end
        return Function_Continue;
end

function onStartCountdown()
   if isStoryMode and not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		if stops == 0 then
			runTimer('thunder', 0);
			runTimer('thunder2', 0.5);
			runTimer('start', 3.25);
			seenCutscene = true;
		end

		if stops == 1 then
		allowCountdown = true;
        return Function_Continue;
		end
	stops  = stops + 1
		return Function_Stop;
	end
	
	if isStoryMode and seenCutscene then
	doTweenAlpha('hudgohi', 'camHUD', 1, 0.5, 'easeIn');
	end
	return Function_Continue;
end