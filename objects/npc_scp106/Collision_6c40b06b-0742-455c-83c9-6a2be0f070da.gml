with (other)
{
	if obj_player.HP<51 instance_destroy()
	if obj_player.HP>49
	{
		obj_player.HP=obj_player.HP-50
		x=obj_106_dimension.x
		y=obj_106_dimension.y
	}
}

instance_destroy()