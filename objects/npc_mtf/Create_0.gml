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


//
//	Inherit this event and assign a polygon and (optionally) shadow caster flags
//	Use eShadowCasterFlags.Static if your shadow caster is unlikely to move between frames!
//

// Child objects set this
polygon = undefined;

// Default shadow caster flags
flags = eShadowCasterFlags.None;

// The maximum length of shadows cast by this shadow caster
// shadow_length -- this is an object variable

//
// Internal
//

// The cached polygon is automatically maintained by the system to optimize static shadow casters
cached_polygon_area = undefined;

// Is the shadow caster outside the active camera?
outside_active_camera = false;
// The last camera this shadow caster was compared against,
// as the view array
last_camera = undefined;