local x, y = guiGetScreenSize()
local Rows = {}
local R = 0
--=============
function outputClient(text, r, g, b)
	local r = r or 255
	local g = g or 255
	local b = b or 255
	local color = tocolor(r, g, b, 255)
	R = R + 17
	table.insert(Rows, {text, color, R})
	setTimer(function()
		setTimer(function()
			if R > 0 then
				R = R - 1.0
				for index, row in pairs(Rows) do
					Rows[index] = {row[1], row[2], row[3] - 1.0}
					if row[3] <= 0 then
						table.remove(Rows, index)
					end
				end
			end
		end, 50, 17)
	end, 10000, 1)
end
addEvent("calloutputClient", true)
addEventHandler("calloutputClient", root, outputClient)
--=============
function drawRows()
	dxDrawRectangle((x - 550)/2, 0, 600, R, tocolor(0, 0, 0, 150))
	for index, row in pairs(Rows) do
		dxDrawText(row[1], (x - 540)/2, row[3] - 20, (x - 600) / 2 + 600, row[3], row[2], 1.0, "default-bold", "center", "center", true, false, false, true, true)
	end
end
addEventHandler("onClientPreRender", root, drawRows)