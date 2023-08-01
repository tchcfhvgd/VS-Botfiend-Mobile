local stops = 0
local endstops = 0

function onCreatePost()
   if isStoryMode then
   setProperty("camHUD.alpha", 0)
   end
end

function onStartCountdown()
   if isStoryMode then
   doTweenAlpha('hudgohi', 'camHUD', 1, 0.5, 'easeIn')
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'transition' then
	endSong()
	end
end

function onEndSong()
		if isStoryMode then
		
		if stops == 0 then
			doTweenAlpha('hudgobye', 'camHUD', 0, 0.5, 'easeIn')			
			runTimer('transition', 0.55);
		end

		if stops == 1 then
        return Function_Continue;
		end
	stops  = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end