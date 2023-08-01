local stops = 0
local endstops = 0
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'transition' then
	endSong()
	end
end

function onEndSong()
		if isStoryMode then
		
		if stops == 0 then
			doTweenAlpha('hudgobye', 'camHUD', 0, 0.5, 'easeIn')
			playAnim('dad', 'hey', false)
			playAnim('boyfriend', 'hey', false)
			runTimer('transition', 5.0);
		end

		if stops == 1 then
        return Function_Continue;
		end
	stops  = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end