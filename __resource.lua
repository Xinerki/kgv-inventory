resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_script 'util.lua'
client_script 'client.lua'

-- EXAMPLE ITEMS:
client_script 'items/mask.lua'
client_script 'items/whistle.lua'
client_script 'items/flip.lua'

client_export "addItemToInventory"

-- ADD THIS TO YOUR __RESOURCE.LUA
-- dependency 'inventory'

--[[
	Item table struct, in order.
	
	itemName: The name of the item.
	itemFunc: The function to call. It creates a thread so you can use Wait inside your script.
	itemIcon: [NOT IMPLEMENTED YET] The texture inside YTD to use. To use your icon, create a YTD file with the same name as your resource and add it to stream.
	
	Check example scripts for.. examples.
]]