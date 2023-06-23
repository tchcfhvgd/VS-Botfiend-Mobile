local countdown = 0
function onCreate()   
	makeLuaSprite('BG', 'ritz/background', -500, -500);
	setScrollFactor('BG', 0.8, 1.0);
	scaleObject('BG', 1.0, 1.0);
	
	makeLuaSprite('FG', 'ritz/foreground', -500, -950);
	setScrollFactor('FG', 1.0, 1.0);
	scaleObject('FG', 1.0, 1.0);
	
	makeAnimatedLuaSprite('BFGF', 'ritz/them', 1415, 370);
	setScrollFactor('BFGF', 1.0, 1.0);
	scaleObject('BF', 1.0, 1.0);
	addAnimationByPrefix('BFGF', 'danceleft', 'danceleft',24,false)
	addAnimationByPrefix('BFGF', 'danceright', 'danceright',24,false)
	
	addLuaSprite('BG', false);
	addLuaSprite('FG', false);
	addLuaSprite('BFGF', true);
	
	setObjectOrder('gfGroup', 0)
end

function onBeatHit()
  if curBeat % 2 == 0 then
    playAnim("BFGF", "danceleft", true)
  else
    playAnim("BFGF", "danceright", true)
  end
end

function onCountdownTick(counter)
if counter == 0 or 2 then
	if getProperty('BFGF' .. '.animation.curAnim.name') == "danceright" then
    playAnim("BFGF", "danceright", true)
	    elseif counter == 1 or 3 then
	        if getProperty('BFGF' .. '.animation.curAnim.name') == "danceleft" then
	        playAnim("BFGF", "danceleft", true)
            end
        end
    end
end
