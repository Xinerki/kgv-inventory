# INVENTORY
A basic and quick inventory system for FiveM.

# USAGE
Hold TAB to open, it should open together with the weapon wheel.
Use Q to scroll items, E to use.

# DOCUMENTATION
Use `exports.inventory:addItemToInventory(itemTable)` in your own resource to add new items.

Item table struct, in order.
	
itemName: The name of the item.
itemFunc: The function to call. It creates a thread so you can use Wait inside your script.
itemIcon: [NOT IMPLEMENTED YET] The texture inside YTD to use. To use your icon, create a YTD file with the same name as your resource and add it to stream.