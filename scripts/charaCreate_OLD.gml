// Initialise character.
/* 

INSERT BELOW INTO CREATION CODE OF NPC INSTANCE

// BEGIN INIT NPC

charaCreate(
E,               //  dir (E, NE, N, NW, W, SW, S, SE)
0,               //  image_index
0,               //  image_speed
0,               //  animSpeed (0+)
0,               //  effectType (0: none. 1: bodyFlame)
0,               //  actingInstance (0 or 1)
0,               //  moveType (0: idle. 1: random. 2: *custom.)
2,               //  moveSpeed (0 ~ <32)
1);              //  movePersist (0: no. 1: yes)

    // *custom: Place code for custom movement here.
    // BEGIN CUSTOM MOVEMENT
    
    
    
    // END CUSTOM MOVEMENT

// END INIT NPC

*/

// Set parameters.
dir = argument0;
//image_index = argument1;
//image_speed = argument2;
nothing1 = argument1;
nothing2 = argument2;
animSpeed = argument3;
effectType = argument4;
if(argument5) actingInstance = 1;
else actingInstance = 0;
moveType = argument6;
moveSpeed = argument7;
movePersist = argument8;

moving = 0;
drawPath = 0;
current = 0;
getSprite(object_index);
sprite_index = spr[dir/45];
isox = iso_get_x(x,y);
isoy = iso_get_y(x,y);
depth = -isoy-8;

// Create particle system.
PS_1 = part_system_create();
part_system_depth(PS_1,-isoy-8);

// Create emitter.
EM_1 = part_emitter_create(PS_1);

// Creating character's tile marker.
XX[current] = x+16;
YY[current] = y+16;
tile = instance_create(XX[current],YY[current],obj_occupiedTile);
