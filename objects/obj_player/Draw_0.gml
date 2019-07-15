draw_self()
if global.DebugInfo {
	draw_text(x - 500 + 100, y - 500 + 100, MagEquip1[| MagEquip1Current])
	draw_text(x - 500 + 200, y - 500 + 100, AmmoLoaded)
	draw_text(x - 500 + 100, y - 500 + 150, MagEquip1Current)
	draw_text(x - 500 + 100, y - 500 + 200, Ammo556)
	draw_text(x + 100, y + 100, FireMode)
	draw_text(x + 100, y + 200, MagEquip1)
	draw_text(x + 100, y + 300, ds_list_size(MagEquip1))
	draw_text(x + 100, y + 400, MagEquip1[| MagEquip1Current])
	draw_text(x + 100, y + 500, MagEquip1Current)
	draw_text(x + 100, y + 600, ToFireCount)
}
