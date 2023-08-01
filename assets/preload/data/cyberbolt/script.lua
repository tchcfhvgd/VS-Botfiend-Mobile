local stops = 0
local endstops = 0
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'bfheying' then
	   playAnim('boyfriend', 'hey', false);
	   playSound('BFyeah');
	end
	if tag == 'bot' then
	   cameraSetTarget('dad');
	   playAnim('dad', 'hey', false);
	   playSound('Botyeah');
	   playAnim('boyfriend', 'Idle', false);
	end
	if tag == 'camtrans' then
	   cameraSetTarget('boyfriend');
	end
	if tag == 'transition' then
	endSong()
	end
end

function onEndSong()
		if isStoryMode then
		
		if stops == 0 then
			doTweenAlpha('hudgobye', 'camHUD', 0, 0.5, 'easeIn')
			runTimer('bfheying', 0.0);
			runTimer('bot', 1.25);
			runTimer('camtrans', 2.5);
			runTimer('transition', 4.5);
		end

		if stops == 1 then
        return Function_Continue;
		end
	stops  = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end