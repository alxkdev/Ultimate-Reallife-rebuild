function showSettingsMenue ()

	hideall ()
	if not isElement ( gWindow["settings"] ) then
		gWindow["settings"] = guiCreateWindow(screenwidth/2-285/2,120,285,456+56*1,"Optionen",false)
		guiSetAlpha(gWindow["settings"],1)
		
		gButton["bonusMenue"] = guiCreateButton(9,24,101,42,"Bonuspunkte",false,gWindow["settings"])
		guiSetAlpha(gButton["bonusMenue"],1)
		guiSetFont(gButton["bonusMenue"],"default-bold-small")
		gButton["loginvideo"] = guiCreateButton(9,80,101,42,"Login-Video",false,gWindow["settings"])
		guiSetAlpha(gButton["loginvideo"],1)
		guiSetFont(gButton["loginvideo"],"default-bold-small")
		gButton["firstPerson"] = guiCreateButton(9,136,101,42,"First Person",false,gWindow["settings"])
		guiSetAlpha(gButton["firstPerson"],1)
		guiSetFont(gButton["firstPerson"],"default-bold-small")
		gButton["socialState"] = guiCreateButton(9,192,101,42,"Sozialer Status",false,gWindow["settings"])
		guiSetAlpha(gButton["socialState"],1)
		guiSetFont(gButton["socialState"],"default-bold-small")
		gButton["spawnPoint"] = guiCreateButton(9,248,101,42,"Spawnpunkt",false,gWindow["settings"])
		guiSetAlpha(gButton["spawnPoint"],1)
		guiSetFont(gButton["spawnPoint"],"default-bold-small")
		gButton["radioSettings"] = guiCreateButton(9,304,101,42,"Radio",false,gWindow["settings"])
		guiSetAlpha(gButton["radioSettings"],1)
		-- NEW --
		gButton["stuntCam"] = guiCreateButton(9,304+56*1,101,42,"Stuntcam",false,gWindow["settings"])
		guiSetAlpha(gButton["stuntCam"],1)
		-- NEW --
		guiSetFont(gButton["radioSettings"],"default-bold-small")
		gButton["changePW"] = guiCreateButton(9,360+56*1,66,42,"Passwort\nändern",false,gWindow["settings"])
		guiSetAlpha(gButton["changePW"],1)
		guiSetFont(gButton["changePW"],"default-bold-small")
		gButton["closeSettings"] = guiCreateButton(210,360+56*1,66,42,"Schließen",false,gWindow["settings"])
		guiSetAlpha(gButton["closeSettings"],1)
		guiSetFont(gButton["closeSettings"],"default-bold-small")
		
		addEventHandler ( "onClientGUIClick", gButton["loginvideo"],
			function ()
				if youtubevideoon then
					youtubevideoon = false
					if fileExists ( "einloggvideo.txt" ) then
						fileDelete ( "einloggvideo.txt" )
					end
					local file = fileCreate ( "einloggvideo.txt" )
					fileWrite ( file, "off" )
					fileClose ( file )
					infobox ( "Youtube-Einloggvideo\ndeaktiviert", 4000, 250, 0, 0 )
				else
					youtubevideoon = true
					if fileExists ( "einloggvideo.txt" ) then
						fileDelete ( "einloggvideo.txt" )
					end
					local file = fileCreate ( "einloggvideo.txt" )
					fileWrite ( file, "on" )
					fileClose ( file )
					infobox ( "Youtube-Einloggvideo\naktiviert", 4000, 0, 210, 0 )
				end
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["bonusMenue"],
			function ()
				guiSetVisible( gWindow["settings"], false )
				_createBonusmenue_func()
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["spawnPoint"],
			function ()
				guiSetVisible( gWindow["settings"], false )
				showSpawnSelection ()
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["socialState"],
			function ()
				guiSetVisible( gWindow["settings"], false )
				showSocialRankWindow ()
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["firstPerson"],
			function ()
				executeCommandHandler ( "ego" )
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["radioSettings"],
			function ()
				destroyElement ( gWindow["settings"] )
				showCustomRadioGUI ()
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["closeSettings"],
			function ()
				guiSetVisible( gWindow["settings"], false )
			end,
		false )
		addEventHandler ( "onClientGUIClick", gButton["stuntCam"],
			function ()
				stuntCameraActive = not stuntCameraActive
				if stuntCameraActive then
					outputChatBox ( "Stuntkamera aktiviert!", 0, 200, 0 )
					setClientData ( "stuntcam", "active" )
				else
					outputChatBox ( "Stuntkamera deaktiviert!", 200, 0, 0 )
					setClientData ( "stuntcam", "inactive" )
				end
			end,
		false )
		
		gLabel[1] = guiCreateLabel(117,22,161,51,"Hier kannst du Bonuspunkte\nfür Verbesserungen aus-\ngeben",false,gWindow["settings"])
		guiSetAlpha(gLabel[1],1)
		guiLabelSetColor(gLabel[1],200,200,0)
		guiLabelSetVerticalAlign(gLabel[1],"top")
		guiLabelSetHorizontalAlign(gLabel[1],"left",false)
		guiSetFont(gLabel[1],"default-bold-small")
		gLabel[2] = guiCreateLabel(117,87,162,53,"Hier kannst du das Einlogg\n-Video (de-)aktivieren.",false,gWindow["settings"])
		guiSetAlpha(gLabel[2],1)
		guiLabelSetColor(gLabel[2],200,200,0)
		guiLabelSetVerticalAlign(gLabel[2],"top")
		guiLabelSetHorizontalAlign(gLabel[2],"left",false)
		guiSetFont(gLabel[2],"default-bold-small")
		gLabel[3] = guiCreateLabel(117,134,162,53,"Hier kannst du die Ego-Sicht\nein- und aus schalten\n( Schnellbefehl: /ego )",false,gWindow["settings"])
		guiSetAlpha(gLabel[3],1)
		guiLabelSetColor(gLabel[3],200,200,0)
		guiLabelSetVerticalAlign(gLabel[3],"top")
		guiLabelSetHorizontalAlign(gLabel[3],"left",false)
		guiSetFont(gLabel[3],"default-bold-small")
		gLabel[4] = guiCreateLabel(117,201,162,53,"Hier kannst du deinen\nsozialen Status verwalten.",false,gWindow["settings"])
		guiSetAlpha(gLabel[4],1)
		guiLabelSetColor(gLabel[4],200,200,0)
		guiLabelSetVerticalAlign(gLabel[4],"top")
		guiLabelSetHorizontalAlign(gLabel[4],"left",false)
		guiSetFont(gLabel[4],"default-bold-small")
		gLabel[5] = guiCreateLabel(117,256,162,53,"Hier kannst du deinen Start-\npunkt auswählen.",false,gWindow["settings"])
		guiSetAlpha(gLabel[5],1)
		guiLabelSetColor(gLabel[5],200,200,0)
		guiLabelSetVerticalAlign(gLabel[5],"top")
		guiLabelSetHorizontalAlign(gLabel[5],"left",false)
		guiSetFont(gLabel[5],"default-bold-small")
		gLabel[6] = guiCreateLabel(117,302,162,44,"Hier kannst du deine Radio-\nsender verwalten und neue\nhinzufügen.",false,gWindow["settings"])
		guiSetAlpha(gLabel[6],1)
		guiLabelSetColor(gLabel[6],200,200,0)
		guiLabelSetVerticalAlign(gLabel[6],"top")
		guiLabelSetHorizontalAlign(gLabel[6],"left",false)
		guiSetFont(gLabel[6],"default-bold-small")
		gLabel[10] = guiCreateLabel(117,302+56,162,44,"Hier kannst du die Stunt-\nkamera ein- bzw. aus\nschalten.",false,gWindow["settings"])
		guiSetAlpha(gLabel[10],1)
		guiLabelSetColor(gLabel[10],200,200,0)
		guiLabelSetVerticalAlign(gLabel[10],"top")
		guiLabelSetHorizontalAlign(gLabel[10],"left",false)
		guiSetFont(gLabel[10],"default-bold-small")
		gLabel[7] = guiCreateLabel(101,358+56,90,17,"Altes Passwort:",false,gWindow["settings"])
		guiSetAlpha(gLabel[7],1)
		guiLabelSetColor(gLabel[7],255,255,255)
		guiLabelSetVerticalAlign(gLabel[7],"top")
		guiLabelSetHorizontalAlign(gLabel[7],"left",false)
		guiSetFont(gLabel[7],"default-bold-small")
		gLabel[8] = guiCreateLabel(28,404+56,96,15,"Neues Passwort:",false,gWindow["settings"])
		guiSetAlpha(gLabel[8],1)
		guiLabelSetColor(gLabel[8],255,255,255)
		guiLabelSetVerticalAlign(gLabel[8],"top")
		guiLabelSetHorizontalAlign(gLabel[8],"left",false)
		guiSetFont(gLabel[8],"default-bold-small")
		gLabel[9] = guiCreateLabel(163,404+56,90,15,"Neues Passwort:",false,gWindow["settings"])
		guiSetAlpha(gLabel[9],1)
		guiLabelSetColor(gLabel[9],255,255,255)
		guiLabelSetVerticalAlign(gLabel[9],"top")
		guiLabelSetHorizontalAlign(gLabel[9],"left",false)
		guiSetFont(gLabel[9],"default-bold-small")
		
		gEdit[1] = guiCreateEdit(89,375+56,110,27,"",false,gWindow["settings"])
		guiSetAlpha(gEdit[1],1)
		gEdit[2] = guiCreateEdit(19,420+56,110,27,"",false,gWindow["settings"])
		guiSetAlpha(gEdit[2],1)
		gEdit[3] = guiCreateEdit(154,420+56,110,27,"",false,gWindow["settings"])
		guiSetAlpha(gEdit[3],1)
	else
		guiSetVisible ( gWindow["settings"], true )
	end
end