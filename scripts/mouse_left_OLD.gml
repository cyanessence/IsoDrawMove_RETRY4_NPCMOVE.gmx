// Exit and stop moving if clicked on occupied tile.
/*if(collision_point(obj_cursorLocation.x+16,obj_cursorLocation.y+16,obj_occupiedTile,false,true))
{
    Dest = 1;
    drawPath = 0;
    exit;
}*/

// If no path exists, create one.
//if(actingInstance){
if(!drawPath) { pathCheck = path_add(); }

// If path exists and cursor already at destination, do nothing.
else if(XX[path_get_number(pathCheck)-1] == obj_cursorLocation.x+16
    and YY[path_get_number(pathCheck)-1] == obj_cursorLocation.y+16) exit;

// Check if path is available from tile to cursor.
// EDIT START
mp_grid_add_instances(global.grid,obj_occupiedTile,false);
mp_grid_add_instances(global.grid,obj_wall,false);
mp_grid_clear_cell(global.grid,floor(tile.x/32),floor(tile.y/32));
// EDIT END
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
//}
/*else
{
    // If a path to location is not available, moving will stop.
    Dest = 1;
    drawPath = 0;
}*/
mp_grid_clear_all(global.grid);}
//mp_grid_add_instances(global.grid,obj_wall,false);






































/*else
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
}
/*else
{
    // If a path to location is not available, moving will stop.
    Dest = 1;
    drawPath = 0;
}*/
//mp_grid_clear_all(global.grid);
//mp_grid_add_instances(global.grid,obj_wall,false);
