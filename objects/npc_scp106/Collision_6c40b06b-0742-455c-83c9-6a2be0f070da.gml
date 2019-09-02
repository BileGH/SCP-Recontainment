instance_destroy()

with (other)
{
	if HP<50 instance_destroy()
	if HP>50
	{
		x=obj_106_dimension.x
		y=obj_106_dimension.y
		HP=HP-50
	}
	
	if HP=50
	{
		x=obj_106_dimension.x
		y=obj_106_dimension.y
		HP=1
	}
}