stop=1

if drag=0 && keyboard_check(ord("E")) && wait<1 
{
	drag=1
	wait=60
}

if drag=1 && keyboard_check(ord("E")) && wait<1 
{
	drag=0
	wait=60
}