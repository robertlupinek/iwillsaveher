//Try to set a path toward the target coordinates
target_x = argument0;
target_y = argument1;

tmp_path_results = mp_grid_path(my_grid, my_path, x, y, target_x, target_y, true);

//Check the length of the path if a path was found
if ( tmp_path_results )
{
  path_ln = path_get_length(my_path);
}
else //If no path was found make it super long :) 
{
  path_ln = 99999999;
}

