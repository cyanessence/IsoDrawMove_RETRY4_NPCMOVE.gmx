/* 

INSERT BELOW INTO CREATION EVENT OF CHARACTER OBJECT

// BEGIN INIT CHAR

charaCreate(
'name1',         // name ('string')
0,               // actingInstance (0 or 1)
E,               // dir (E,NE,N,NW,W,SW,S,SE)
0,               // animSpeed (0+)
0);              // effectType

// END INIT CHAR

*/

// Set parameters.
name = argument0;
actingInstance = argument1;
dir = argument2;
animSpeed = argument3;
effectType = argument4;

moveType = 0;
moveSpeed = 2;
movePersist = 0;
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
