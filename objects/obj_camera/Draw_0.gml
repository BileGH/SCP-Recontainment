if global.DebugInfo {draw_self()}

#macro DRAWSHADOWSPRITE {draw_sprite_ext(sprite_index,image_index,x,y+36,1,1,image_angle,c_black,0.25)}
#macro DRAWSHADOWCORPSE {draw_sprite_ext(sprite_index,image_index,x,y+16,1,1,image_angle,c_black,0.3)}
with (obj_player) DRAWSHADOWSPRITE 
with (npc_mtf) DRAWSHADOWSPRITE
with (npc_scientist) DRAWSHADOWSPRITE
with (npc_dclass) DRAWSHADOWSPRITE
with (obj_dead_body_player) DRAWSHADOWCORPSE
with (obj_dead_body_dclass) DRAWSHADOWCORPSE
with (obj_dead_body_scientist) DRAWSHADOWCORPSE
with (obj_body_bag) DRAWSHADOWCORPSE