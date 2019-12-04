
function DisplayHelpText(helpText)
	SetTextComponentFormat("CELL_EMAIL_BCON")
	AddTextComponentString(helpText)
	DisplayHelpTextFromStringLabel(0,0,1,-1)
end

function DrawSomeText(text, x, y, scale, font, color, edgecolor)
	SetTextFont(font)
	SetTextProportional(1)
	SetTextScale(0.0, scale)
	SetTextColour(table.unpack(color))
	SetTextEdge(table.unpack(edgecolor))
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(x, y)
end

INPUT_SELECT_WEAPON = 37	 -- TAB
INPUT_CONTEXT = 51 			 -- E
INPUT_CONTEXT_SECONDARY = 52 -- Q