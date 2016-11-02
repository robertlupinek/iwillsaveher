
//Make sprite selection based on various  status here
tmp_sprite = sprite_stand_still;
image_speed = 0.25;


//Moving
if ( path_speed && path_index != -1  ) {
  tmp_sprite = sprite_walk; 
  scp_set_xscale();
  image_speed = 0.35;
}
else{ 
    tmp_sprite = sprite_stand_still;
}


//Set xscale for  if holding down the mouse...
if ( mouse_check_button(mb_left) && mouse_y < 192 ){//Set the mouse coordinates as the target
  target_x = mouse_x;
  if target_x > x then xscale = 1 else xscale = -1;
}

depth = -y;

return tmp_sprite;


