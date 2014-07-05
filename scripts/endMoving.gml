// Move ended.
moving = 0;
path_delete(pathMoving);
// If final destination not yet reached...
if(current < Dest-1)
{
    // ...continue towards goal.
    initMoving();
}
else
{
    // Stop moving.
    path_delete(pathCheck);
    drawPath = 0;
}
