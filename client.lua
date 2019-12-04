
inventoryItems = {}

function addItemToInventory(itemTable)
	table.insert(inventoryItems, itemTable)
end

startTick = 0
firstTime = true
currentItem = 1
inventoryCount = 0

-- DrawSomeText(text, x, y, scale, font, color, edgecolor)

Citizen.CreateThread(function()
	Wait(1500)
	while true do Wait(0)
	inventoryCount = #inventoryItems
		if IsControlPressed(0, INPUT_SELECT_WEAPON) then
			if IsControlJustPressed(0, INPUT_SELECT_WEAPON) then
				startTick = GetGameTimer()
				endTick = startTick+100
				print(endTick)
			end
			
			if GetGameTimer() > endTick and IsHudComponentActive(2) and not IsHudHidden() then
			
				if firstTime == true then DisplayHelpText("Press ~INPUT_CONTEXT_SECONDARY~ to scroll inventory.~n~Press ~INPUT_CONTEXT~ to activate item.") end
				if GetGameTimer() > (endTick + 1500) then firstTime = false end

				DrawRect(0.325, 0.65, 0.05, 0.05*1.6, 50, 50, 50, 150)
				DrawSomeText(inventoryItems[currentItem].itemName, 0.325, 0.65, 0.35, 0, {255, 255, 255, 255}, {0, 0, 0, 255})
				
				if IsControlJustPressed(0, INPUT_CONTEXT_SECONDARY) then
					if currentItem == inventoryCount then currentItem = 1 else currentItem = currentItem + 1 end
					PlaySoundFrontend(-1 , "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)
				end
				
				if IsControlJustPressed(0, INPUT_CONTEXT) then 
					Citizen.CreateThread(inventoryItems[currentItem].itemFunc)
					PlaySoundFrontend(-1 , "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)
				end
			end
		end
	end
end)