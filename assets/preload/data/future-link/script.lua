local cool = false
function onUpdate()
    if cool then
        if keyJustPressed('accept') then
            endSong()
        end
    end
end


function onEndSong()
        if not cool then
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
            cool = true
            return Function_Stop;
        end
        return Function_Continue;
end