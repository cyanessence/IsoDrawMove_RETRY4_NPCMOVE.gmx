// Set up the grid.
global.grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
//mp_grid_add_instances(global.grid,obj_wall,false);

// Create cursor.
instance_create(0,0,obj_cursor);
instance_create(0,0,obj_cursorLocation);
cursor_sprite = spr_cursor;

// Set up particle system.
partSysInit();
