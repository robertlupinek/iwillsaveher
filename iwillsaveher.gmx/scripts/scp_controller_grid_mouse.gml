//We add in the view_xview and yview because the view[1] does not move thus
//mouse x is not updated with teh default views position :)

wx = mouse_x + view_xview[0];
wy = mouse_y + view_yview[0];
//Track mouse along grid
for( mx = grid_left * grid_size_x;mx< ( view_xview[0] + view_wview[0] ) - grid_right * grid_size_x;mx += grid_size_x )
{
    if ( wx >= mx and wx < mx + grid_size_x )
    {
        mouse_grid_x = mx;
    }     
}

for( my = grid_top * grid_size_y;my < ( view_yview[0] + view_hview[0] ) - grid_bottom * grid_size_y;my += grid_size_y )
{
    if ( wy >= my and wy < my + grid_size_y )
    {
        mouse_grid_y = my;
    }     
}
