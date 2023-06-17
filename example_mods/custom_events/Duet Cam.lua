function onEvent(name,value1,value2)

    if name == "Duet Cam" then

        if value1 == 'on' then
      	
		triggerEvent('Camera Follow Pos', getMidpointX("gf") + getProperty("gf.cameraPosition")[1], getMidpointY("gf") + getProperty("gf.cameraPosition")[2])
		
	elseif value1 == 'off' then
	
		triggerEvent('Camera Follow Pos', '', '')

	end
     
    end

end