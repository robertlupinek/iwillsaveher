

//Check for mouse over
tmp_target = argument[0];
//Exit script if instance no longer exists...
if not instance_exists(tmp_target) then return 0;

if argument_count >= 2 then tmp_extra = argument[1] else tmp_extra = 0;

//We add in the view_xview and yview because the view[1] does not move thus
//mouse x is not updated with the default views position since we are using view[1]:)

tmp_return = 0;
if ( mouse_x + view_xview[0] > tmp_target.bbox_left - tmp_extra && mouse_x + view_xview[0]< tmp_target.bbox_right + tmp_extra )
{
    if ( mouse_y + view_yview[0] > tmp_target.bbox_top  - tmp_extra && mouse_y + view_yview[0] < tmp_target.bbox_bottom  + tmp_extra )
    {
        tmp_return = 1;
    }
}

return tmp_return;
