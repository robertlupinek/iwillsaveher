image_angle = 0 + hspeed;

//KO if out of hp
if ( hp <= 0 )
{
  hp = 0;
  scp_create_chunks(sprite_index,2,x - abs(sprite_xoffset),y - abs(sprite_yoffset),bbox_bottom,xscale,yscale,0);
  instance_destroy();    
}   

///////////////////////////////
//Movement code
///////////////////////////////


//If moving using multipath
if ( global.mp ){
  scp_player_mp_move();
}

//Moves with mouse clicks in straight line.
if ( global.mouse ){
  if (  mouse_check_button_released(mb_left) ){
    //Set target coordinates
    target_x = mouse_x + view_xview[0];
    target_y = mouse_y + view_yview[0];
  }
  scp_move_to_target(target_x,target_y,move_speed);
}

if ( global.keyboard ){
  //Allow the player to move via keyboard input...
  scp_player_keyboard_move();
}

//Grid movement is handled in the controller object

//Collisions
scp_top_down_collision();
//scp_platform_collision();
//Level up
scp_player_level_up();

//Shooting 
scp_player_attack();

//Select sprites
sprite_index = scp_player_sprite_select();

//Moving outside of the room!
if ( bbox_left < 0 ){
  hspeed = 0;
  x+= 2;
}
if ( bbox_right > room_width ){
  hspeed = 0;
  x-= 2;
}
if ( y > room_height ){
  hp = 0;
}
if ( bbox_top < 0 ){
  vspeed = 0;
  y += 2;
}





