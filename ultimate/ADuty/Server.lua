local admindutyskin = 260   -- Admin-Duty Skin ID
--local admindutycar = 411   -- Admin-Duty Fahrzeug ID
local clantagwithsquarebracket = false   -- Falls ihr einen eckigen Clantag habt
local admindutyarray = { vehicles = {}, skins = {} }


function adminDuty ( player )
	if vioGetElementData ( player, "adminlvl" ) >= 3 then
		if not admindutyarray.skins[player] then
			executeCommandHandler ( "meCMD", player, "ist nun im Admin-Duty" )
			admindutyarray.skins[player] = getElementModel ( player )
			setElementModel ( player, admindutyskin )
			addEventHandler ( "onPlayerQuit", player, quitAdminDuty )
			addEventHandler ( "onPlayerWeaponSwitch", player, dontHoldWeaponInAdminDuty )
			triggerClientEvent ( player, "inAdminDuty", player ) 
			local x, y, z = getElementPosition ( player )
			local rx, ry, rz = getElementRotation ( player )
			local name = getPlayerName ( player )
			if clantagwithsquarebracket then
				name = gettok ( name, 2, string.byte ( "]" ) ) or name -- Damit Clantag nicht mit angezeigt wird auf dem Nummernschild
			end
		else
			triggerClientEvent ( player, "notInAdminDuty", player ) 
			executeCommandHandler ( "meCMD", player, "ist nicht mehr im Admin-Duty" )
			setElementModel ( player, admindutyarray.skins[player] )
			admindutyarray.skins[player] = nil
			removeEventHandler ( "onPlayerQuit", player, quitAdminDuty )
			removeEventHandler ( "onPlayerWeaponSwitch", player, dontHoldWeaponInAdminDuty )
		end
	else
		infobox ( player, "Du bist\nnicht befugt!", 4000, 155, 0, 0 )
	end
end
addCommandHandler ( "aduty", adminDuty )


function quitAdminDuty ( )
	if admindutyarray.skins[source] then
		admindutyarray.skins[source] = nil
	end
end


function stopEnterTheAdminCar ( player, _, _, door )
	if door == 0 and player ~= getPlayerByAdminVehicle ( source ) then
		cancelEvent()
	end
end


function getPlayerByAdminVehicle ( vehicle )
	for player, veh in pairs ( admindutyarray.vehicles ) do
		if veh == vehicle then
			return player
		end
	end
	return false
end


function adminCarDestroyed ( )
	for key, vehicle in pairs ( admindutyarray.vehicles ) do
		if vehicle == source then
			admindutyarray.vehicles[key] = nil
		end
	end
end


function dontHoldWeaponInAdminDuty ( )
	setPedWeaponSlot ( source, 0 )
end