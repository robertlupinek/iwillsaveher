
//Make sprite selection based on various  status here
tmp_sprite = sprite_stand_still;
image_speed = 0.25;


//Moving
if ( ( path_speed && path_index != -1 ) )
{
  //Change the xscale based upon move direction only if no enemy is targeted.
  //We want to use the xscale set based on direction to enemy if we have an enemy
  //in sites.
  if ( !enemy_target ){
    scp_set_xscale();
  }

  tmp_sprite = sprite_walk; 
}
else 
{ 
    tmp_sprite = sprite_stand_still;
}


//Set xscale for  if holding down the mouse...
if ( obj_controller.player_id == id && mouse_check_button(mb_left) && mouse_y < 192 ){//Set the mouse coordinates as the target
  target_x = mouse_x + view_xview[0];
  if target_x > x then xscale = 1 else xscale = -1;
}

return tmp_sprite;
