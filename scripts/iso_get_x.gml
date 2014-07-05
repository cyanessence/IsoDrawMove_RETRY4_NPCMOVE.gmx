// isox
/*

iso_get_x(x,y)
Function returns the x co-ordinate used for drawing the instance in isometric.
Script by Rani_sputnik

*/

switch(iso_projection)
{
    // North East
    case ipro_ne: return (argument0+argument1)/2;
    // South East
    case ipro_se: return (room_width-argument0+argument1)/2;
    // South West
    case ipro_sw: return (room_width-argument0+room_height-argument1)/2;
    // North West
    case ipro_nw: return (argument0+room_height-argument1)/2;
}
