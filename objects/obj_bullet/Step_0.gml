Wait -= 0.1
if Wait < 0 {
	if collision_line(xprevious, yprevious, x, y, obj_player, 1, 0) {ToCheck+=1 return}
	if collision_line(xprevious, yprevious, x, y, npc_dclass, 1, 0) {ToCheck+=1}
	if collision_line(xprevious, yprevious, x, y, npc_mtf, 1, 0) {ToCheck+=1}
	if collision_line(xprevious, yprevious, x, y, npc_scientist, 1, 0) {ToCheck+=1}
	if collision_line(xprevious, yprevious, x, y, npc_scp106, 1, 0) {ToCheck+=1}
	if collision_line(xprevious, yprevious, x, y, npc_scp173, 1, 0) {ToCheck+=1}
	if collision_line(xprevious, yprevious, x, y, obj_wall, 1, 0) {ToCheck+=1}
}
if ToCheck > 0 {}