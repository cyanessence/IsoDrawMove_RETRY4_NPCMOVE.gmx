// Change facing, create path, move tile.
dir = point_direction(XX[current],YY[current],XX[current+1],YY[current+1]);
current += 1;
pathMoving = path_add();
mp_grid_path(global.grid,pathMoving,tile.x,tile.y,XX[current],YY[current],1);
tile.x = XX[current];
tile.y = YY[current];

// Check for collisions with other tiles.
with(tile)
{
    if(collision_point(x,y,obj_occupiedTile,false,true))
    {
        collisionDetected = true;
    }
    else collisionDetected = false;
}

// If no collision, set speed and move along path.
if(tile.collisionDetected == false)
{
    var spd;
    spd = moveSpeed;
    if(x+16 != tile.x and y+16 != tile.y)
    {
        spd = moveSpeed/sqrt(2)+moveSpeed/sqrt(2);
    }
    path_start(pathMoving,spd,0,0);
    moving = 1;
    if(moveType == 4)
    {
        if(cstmPathPoint < customMoveNum-1) cstmPathPoint += 1;
        else cstmPathPoint = 0;
    }
}

// Otherwise, postpone movement.
else
{
    tile.x = XX[current-1];
    tile.y = YY[current-1];
    if(movePersist)
    {
        current -= 1;
        moving = 1;
        if(moveType == 4) { cstmPathPoint -= 1; }
    }
    else
    {
        Dest = 1;
        setFacing();
        endMoving();
    }
    tile.collisionDetected = false;
}
