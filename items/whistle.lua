
RequestAnimDict("taxi_hail")

function whistleFunction()
	TaskPlayAnim(PlayerPedId(), "taxi_hail", "hail_taxi", 4.0, -1.0, 2000, 48, -1.0, false, false, false)
	-- wow so simple!
end

local itemTable = {
	itemName = "Whistle",
	itemFunc = whistleFunction,
	itemIcon = "whistle",
}

addItemToInventory(itemTable)
-- exports.inventory:addItemToInventory(itemTable)