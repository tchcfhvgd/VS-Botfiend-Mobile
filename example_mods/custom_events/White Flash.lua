-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'White Flash' then
		setProperty('white.alpha', 1);
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('white.alpha', targetAlpha);
		else
			doTweenAlpha('whiteFadeEventTween', 'white', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end

function onCreate()
makeLuaSprite('white', nil, -225, -100);
		makeGraphic('white', screenWidth * 5, screenHeight * 5, 'FFFFFF');
		setScrollFactor('white', 0, 0)
		addLuaSprite('white', true);
	setProperty('white.alpha', 0);
	end		