function setClientData ( name, value )

	if fileExists ( "stored_files/data/"..name..".val" ) then
		fileDelete ( "stored_files/data/"..name..".val" )
	end
	
	fileCreate ( "stored_files/data/"..name..".val" )
	
	local file	= fileOpen ( "stored_files/data/"..name..".val" )
	
	fileWrite ( file, tostring ( value ) )
	
	fileClose ( file )
	
	return true
end

function doesClientDataExists ( name )

	if fileExists ( "stored_files/data/"..name..".val" ) then
		return true
	end
	return false
end

function getClientData ( name )

	local file	= fileOpen ( "stored_files/data/"..name..".val" )
	if file then
		local fileData = fileRead ( file, fileGetSize ( file ) )
		fileClose ( file )
		
		if fileData == nil then
			fileData = ""
		end
	
		return fileData
	else
		return false
	end
end