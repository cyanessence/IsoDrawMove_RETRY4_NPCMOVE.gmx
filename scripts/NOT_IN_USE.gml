// @: Make obj_occupiedTile a child of obj_wall (pathCheck will avoid characters and walls)
// 
// Instead of the moving character's tile location being the start point of its path,
// find the best first point of its path. Doing so means pathCheck will ignore the moving
// character's blocked tile location but still consider every other character's tile location.
// 
// #: To determine best first point of path:
// Check the 8 tiles surrounding the moving character for paths to destination, avoinding walls and other characters.
// Determine which of the possible paths of the 8 points checked is the shortest (pathCheck = this one).
// 
// At this point, the tile is moved to the best first position. However, pathCheck is not used to move along it.
// If pathCheck were used, once the tile has moved to the first point, you cannot move 
// Instead, in a grid that considers nothing (can pass through walls and tiles), pathMoving stores
// the path found by pathCheck

//make obj_occupiedTile a child of wall
//when checking path, check 8 points around tile, but not tile itself
//determine which is the shortest route and set pathCheck to it.
//in doing this, you have checked which square is the best to move into next.
//move the tile to this optimum first position, following a path that does not consider tiles
//this results in the tile moving if and only if there is a space free
//the path created is never actually used to move, just determine the best next step
//once the tile has moved, other moving characters can move into their previous square, but not to their moved tile.

// Best start position. First, if the place can be moved to...
// Can use path that ignores everything: when i or j are equal to 1,
// it is a direct move.
// if neither i nor j are equal to 1, then it is a diagonal move.
// in such a case, a minimum of that square plus the
/*var i,j,shortestPath;
shortestPath = 0;
for(i = 0; i < 3; i += 1)
{
    for(j = 0; j < 3; j += 1)
    {
        // If not tile.x and tile.y
        if(!(i == 1 and j == 1))
        {
            // Set coordinates of next possible move.
            posx[i] = tile.x-48+(i*32);
            posy[j] = tile.y-48+(j*32);
            // If direct move...
            if(i == 1 or j == 1)
            {
                // Check if able to move from there to dest, avoiding tiles and walls.
                if(mp_grid_path(global.grid,pathCheck,posx[i],posy[j],obj_cursorLocation.x+16,obj_cursorLocation.y+16,1))
                {
                    //pathCheck = 
                }
            }
            // If diagonal move...
            else
            {
                // Check to see if place can be reached. If a place can be, then check if path from there to dest.
                //if(!i) { check posx[0], posy[1] }
                //else { check posx[2], posy[1] }
                //if(!j) { check posx[1], posy[0] }
                //else { check posx[1] }
            }
        }
    }
}*/

/*
for(i = 0; i < 3; i += 1)
{
    for(j = 0; j < 3; j += 1)
    {
        if(!(i == 1 and j == 1))
        {
            if(i == 1 or j == 1) draw_sprite(spr_actingInstance,0,tile.x-48+(i*32)+288,tile.y-48+(j*32)+32);
            else draw_sprite(spr_forbidden,0,tile.x-48+(i*32)+288,tile.y-48+(j*32)+32);
        }
    }
}
*/

// Set direction.
/*if(current > 0)
{
    if(XX[current-1] < XX[current] and YY[current-1] == YY[current]) dir = 0;
    // Right-up.
    else if(XX[current-1] < XX[current] and YY[current-1] > YY[current]) dir = 45;
    // Up.
    else if(XX[current-1] == XX[current] and YY[current-1] > YY[current]) dir = 90;
    // Up-left.
    else if(XX[current-1] > XX[current] and YY[current-1] > YY[current]) dir = 135;
    // Left.
    else if(XX[current-1] > XX[current] and YY[current-1] == YY[current]) dir = 180;
    // Left-down.
    else if(XX[current-1] > XX[current] and YY[current-1] < YY[current]) dir = 225;
    // Down.
    else if(XX[current-1] == XX[current] and YY[current-1] < YY[current]) dir = 270;
    // Down-right.
    else dir = 315;
}*/
