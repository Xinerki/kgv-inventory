
RequestAnimDict("anim@arena@celeb@flat@solo@no_props@")

function flipfunction()
	TaskPlayAnim(PlayerPedId(), "anim@arena@celeb@flat@solo@no_props@", "flip_a_player_a", 4.0, -1.0, -1, 0, -1.0, false, false, false)
end

local itemTable = {
	itemName = "Flip",
	itemFunc = flipfunction,
	itemIcon = "flip",
}

addItemToInventory(itemTable)
-- exports.inventory:addItemToInventory(itemTable)