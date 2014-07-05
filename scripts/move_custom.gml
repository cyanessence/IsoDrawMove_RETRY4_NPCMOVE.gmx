pathCheck = path_add();
switch(customMove[cstmPathPoint])
{
    case 0: { destination.x = tile.x+32; destination.y = tile.y; break; }
    case 1: { destination.x = tile.x+32; destination.y = tile.y-32; break; }
    case 2: { destination.x = tile.x; destination.y = tile.y+32; break; }
    case 3: { destination.x = tile.x-32; destination.y = tile.y-32; break; }
    case 4: { destination.x = tile.x-32; destination.y = tile.y; break; }
    case 5: { destination.x = tile.x-32; destination.y = tile.y+32; break; }
    case 6: { destination.x = tile.x; destination.y = tile.y+32; break; }
    case 7: { destination.x = tile.x+32; destination.y = tile.y+32; break; }
}

current = 0;
mp_grid_path(global.grid,pathCheck,tile.x,tile.y,destination.x+16,destination.y+16,1);
for(i = 0; i < path_get_number(pathCheck); i += 1)
{
    XX[i] = path_get_point_x(pathCheck,i);
    YY[i] = path_get_point_y(pathCheck,i);
}
Dest = path_get_number(pathCheck);
// Draw the path.
drawPath = 1;

exit;
/*































// If no path exists, create one.
//if(actingInstance){
if(!drawPath) { pathCheck = path_add(); }

// If path exists and cursor already at destination, do nothing.
else if(XX[path_get_number(pathCheck)-1] == obj_cursorLocation.x+16
    and YY[path_get_number(pathCheck)-1] == obj_cursorLocation.y+16) exit;

// Add instances to grid, then clear object's tile.
mp_grid_add_instances(global.grid,obj_occupiedTile,false);
mp_grid_add_instances(global.grid,obj_wall,false);
mp_grid_clear_cell(global.grid,floor(tile.x/32),floor(tile.y/32));

if(mp_grid_path(global.grid,pathCheck,tile.x,tile.y,obj_cursorLocation.x+16,obj_cursorLocation.y+16,1))
{
    // If path available, create path, path points, and determine destination point.
    current = 0;
    mp_grid_path(global.grid,pathCheck,tile.x,tile.y,obj_cursorLocation.x+16,obj_cursorLocation.y+16,1);
    for(i = 0; i < path_get_number(pathCheck); i += 1)
    {
        XX[i] = path_get_point_x(pathCheck,i);
        YY[i] = path_get_point_y(pathCheck,i);
    }
    Dest = path_get_number(pathCheck);
    // Draw the path.
    drawPath = 1;
}

// Clear the grid.
mp_grid_clear_all(global.grid);/*}
else
{
    if(!drawPath) { pathCheck = path_add(); }

// Check if path is available from tile to cursor.
// EDIT START
mp_grid_add_instances(global.grid,obj_occupiedTile,false);
mp_grid_add_instances(global.grid,obj_wall,false);
mp_grid_clear_cell(global.grid,floor(tile.x/32),floor(tile.y/32));
// EDIT END
if(mp_grid_path(global.grid,pathCheck,tile.x,tile.y,tile.x,tile.y+32,1))
{
    // If path available, create path, path points, and determine destination point.
    current = 0;
    mp_grid_path(global.grid,pathCheck,tile.x,tile.y,tile.x,tile.y+32,1);
    for(i = 0; i < path_get_number(pathCheck); i += 1)
    {
        XX[i] = path_get_point_x(pathCheck,i);
        YY[i] = path_get_point_y(pathCheck,i);
    }
    Dest = path_get_number(pathCheck);
    // Draw the path.
    drawPath = 1;
}mp_grid_clear_all(global.grid);}
/*else
{
    // If a path to location is not available, moving will stop.
    Dest = 1;
    drawPath = 0;
}*/

