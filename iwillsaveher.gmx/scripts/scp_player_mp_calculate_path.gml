//This script will calculate a path for the player to take

tmp_target_x = argument[0];
tmp_target_y = argument[1];

//Set the icon for the mouse
obj_controller.my_selection_thingy.state = 1;

tmp_path_results = -1;
//If there is a clear path to the target move in a straight line  
if ( !scp_line_collision(x,y,tmp_target_x,tmp_target_y,obj_block,4) ){
  tmp_path_results = 1;
  //We set this initially because I have issues with the path doubling back
  //until the first time the path was set.
  //Something is not getting set right in the path.
  tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, tmp_target_x, tmp_target_y, true);
  //Clear the path
  path_clear_points(my_path);
  path_add_point( my_path ,x,y,100 );
  path_add_point( my_path ,tmp_target_x, tmp_target_y,100 );
  
}
else {
  //Set the path my_path to path found IF one was found
  tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, tmp_target_x, tmp_target_y, true);
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
