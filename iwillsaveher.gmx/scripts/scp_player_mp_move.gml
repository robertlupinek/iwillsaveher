//Delay when you can actually start moving.

//Set the path for the player if mouse pressed above the hud and not player is not stunned
if ( mouse_check_button(mb_left) && mouse_y < 192 && alarm[3] <= 0 ){
  //Set the mouse coordinates as the target
  target_x = mouse_x + view_xview[0];
  target_y = mouse_y + view_yview[0];

  //Set the icon for the mouse
  obj_controller.my_selection_thingy.state = 1;
  
  //Stop moving and recalculate path
  path_end();

  tmp_path_results = -1;
  //If there is a clear path to the target move in a straight line  
  if ( !scp_line_collision(x,y,target_x,target_y,obj_block,4) ){
    tmp_path_results = 1;
    //We set this initially because I have issues with the path doubling back
    //until the first time the path was set.
    //Something is not getting set right in the path.
    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, true);
    //Clear the path
    path_clear_points(my_path);
    path_add_point( my_path ,x,y,100 );
    path_add_point( my_path ,target_x, target_y,100 );
    
  }
  else {
    //Set the path my_path to path found IF one was found
    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, true);
  }
  //Path length is used to draw the path
  path_ln = path_get_length(my_path);
  if path_ln = 0 then path_ln = 0.0001;
  path_alpha = 1;
    
  //If no good path found
  if ( !tmp_path_results ){
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 2;
    //Uncomment if you want to not show path
    if !good_path_found then path_ln = 0.001;
  }
  else{
    //Found a good path!  This means my_path is set to a valid path.
    good_path_found = 1;
  }
  
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
