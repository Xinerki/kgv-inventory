
maskId = 51
maskTexture = 0

RequestAnimDict("misscommon@van_put_on_masks")
RequestAnimDict("misscommon@std_take_off_masks")

function maskFunction()
	if GetPedDrawableVariation(PlayerPedId(), 1) == 0 then
		TaskPlayAnim(PlayerPedId(), "misscommon@van_put_on_masks", "put_on_mask_ps", 8.0, -1.0, 1000, 48, -1.0, false, false, false)
		Wait(500)
		SetPedComponentVariation(PlayerPedId(), 1, maskId, maskTexture, 0)
	else
		TaskPlayAnim(PlayerPedId(), "misscommon@std_take_off_masks", "take_off_mask_ps", 8.0, -1.0, 1000, 48, -1.0, false, false, false)
		Wait(500)
		maskId = GetPedDrawableVariation(PlayerPedId(), 1)
		maskTexture = GetPedTextureVariation(PlayerPedId(), 1)
		SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
	end
end

local itemTable = {
	itemName = "Wear mask",
	itemFunc = maskFunction,
	itemIcon = "mask",
}

addItemToInventory(itemTable)
-- exports.inventory:addItemToInventory(itemTable)