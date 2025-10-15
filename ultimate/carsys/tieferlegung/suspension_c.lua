addEvent( "doSuspensionTool", true )

function BaixarCarro ( )
	if isPedInVehicle(getLocalPlayer()) then
		local vehicle = getPedOccupiedVehicle(getLocalPlayer())
		if getVehicleType ( vehicle ) == "Automobile" or getVehicleType ( vehicle ) == "Monster Truck" or getVehicleType ( vehicle ) == "Quad" then
			guiSetText ( TxtHoldCtrl, "STRG zum Benutzen!")

			local seatvehicle = getVehicleOccupant(vehicle,0)
			if (seatvehicle) then
				EscondeMostra()
			else
				infobox ( "Nur für den\nFahrer erlaubt!", 3000, 255, 0, 0 )
			end
		else
			infobox ( "\nNur für\nAutos!", 3000, 255, 0, 0 )
		end
	else
        infobox ( "Du bist in\nkeinem Fahrzeug!", 3000, 255, 0, 0 )
	end
end
addEventHandler( "doSuspensionTool", getRootElement(), BaixarCarro  )

function Levanta()
    triggerServerEvent("subir", getLocalPlayer())
end

function Desce()
    triggerServerEvent("descer", getLocalPlayer())
end

addEventHandler ( "onClientPlayerVehicleEnter", getLocalPlayer(), function ( veh, seat )
	if getElementData ( source, "adminlvl" ) >= 1 then
	if seat == 0 then
		if getVehicleType ( veh ) == "Automobile" or getVehicleType ( veh ) == "Monster Truck" or getVehicleType ( veh ) == "Quad" then 
			bindKey("O", "down", BaixarCarro)
			addEventHandler ( "onClientPlayerVehicleExit", getLocalPlayer(), removeTheSuspensionKey )
		end
	end
	end
end )

function removeTheSuspensionKey ( )
	unbindKey ("O", "down", BaixarCarro)
	removeEventHandler ( "onClientPlayerVehicleExit", getLocalPlayer(), removeTheSuspensionKey )
end