draw_self()
if global.DebugInfo {
	draw_text(x - 500 + 100, y - 500 + 100, Equipped[|9]+("["|Equipped[|11]+"]"))
	draw_text(x - 500 + 200, y - 500 + 100, AmmoLoaded)
	draw_text(x - 500 + 100, y - 500 + 150, Equipped[|11])
	draw_text(x - 500 + 100, y - 500 + 200, Ammo556)
	draw_text(x + 100, y + 100, Equipped[|10])
	draw_text(x + 100, y + 200, Equipped[|9])
	draw_text(x + 100, y + 300, ds_list_size(Equipped[|9]))
	draw_text(x + 100, y + 400, Equipped[|9]+"[|"+Equipped[|11]+"]")
	draw_text(x + 100, y + 500, Equipped[|11])
	draw_text(x + 100, y + 600, ToFireCount)
	draw_text(x + 100, y + 600, Equipped[|2])
}
