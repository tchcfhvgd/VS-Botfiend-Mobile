function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Trail Note' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
	--debugPrint('Script started!')
        end
    end  
end