//Delay when you can actually start moving.

//Set the path for the player if mouse pressed above the hud and not player is not stunned
if ( mouse_check_button(mb_left) && mouse_y < 192 + view_yview[0] && alarm[3] <= 0 ){
  //Set the mouse coordinates as the target
  target_x = mouse_x;
  target_y = mouse_y;
  //Stop moving and recalculate path
  path_end();
  scp_player_mp_calculate_path(target_x,target_y);
}

//If move selected start moving along the path
if (  mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right)  ){
  //If a good path was found then start that thang
  if ( good_path_found == 1 ){
    //There was a good path found, let's follow it!
    path_start(my_path,move_speed,path_action_stop,0);
  }
    //Reset the good path found back to 0
    good_path_found = 0;
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 0;
}
//Make the dotted line disappear..
path_alpha -= 0.1;
