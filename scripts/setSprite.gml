// Determine correct sprite to draw.
if(!moving)
{
    if(animSpeed == 0) { image_index = 0; }
    else image_speed = animSpeed;
}
else
{
    // Moving sprites.
    image_speed = moveSpeed/16;
    setFacing();
}
