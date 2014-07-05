// regx
/*

iso_get_regx(isox,isoy)
Function returns the x co-ordinate based on isometric co-ordinates.
Script by Rani_sputnik

*/

switch(iso_projection)
{
    // North East
    case ipro_ne: return -(argument1)/iso_factor+room_width/2+argument0;
    // South East
    case ipro_se: return -(argument1)/iso_factor+room_width+room_height/2-argument0;
    // South West
    case ipro_sw: return (argument1)/iso_factor-argument0+room_width/2;
    // North West
    case ipro_nw: return (argument1)/iso_factor+argument0-room_height/2;
}
