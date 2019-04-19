if follow=0 && keyboard_check_released(ord("E")) && wait<1
{
	follow=1
	wait=60
}
if follow=1 && keyboard_check_released(ord("E")) && wait<1
{
	follow=0
	wait=60
}