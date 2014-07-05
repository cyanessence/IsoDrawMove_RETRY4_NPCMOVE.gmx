// isoy
/*

iso_get_y(x,y)
Function returns the y co-ordinate used for drawing the instance in isometric.
Script by Rani_sputnik

*/

switch(iso_projection)
{
    // North East
    case ipro_ne: return (room_width-argument0+argument1)/2*iso_factor;
    // South East
    case ipro_se: return (room_width-argument0+room_height-argument1)/2*iso_factor;
    // South West
    case ipro_sw: return (argument0+room_height-argument1)/2*iso_factor;
    // North West
    case ipro_nw: return (argument0+argument1)/2*iso_factor; 
}
