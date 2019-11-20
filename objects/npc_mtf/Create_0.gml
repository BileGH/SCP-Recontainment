// Making use of OOP
event_inherited()


HP=100;
spd=8;
maxspd=13;
gc=10;
Accelerate = 0.1;
hgc=0;
ga=15;
follow=1;
wait=60;

Damage = 26

Path = path_add();
    if mp_grid_path(global.MPGrid, Path, x, y, obj_player.x, obj_player.y, 1)
        {
        path_start(Path, 2, 0, 0);
        }
CalculatePath = 10
Numbers=75
SetX = irandom_range(-150,150)
SetY = irandom_range(-150,150)
