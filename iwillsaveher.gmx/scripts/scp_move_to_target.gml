//This script will move the object to the target coordinates.
//The script needs to be run from a step event to be effective
tmp_target_x = argument[0];
tmp_target_y = argument[1];
tmp_speed = argument[2];

//Set speed if you are not on target
if ( point_distance(x,y,tmp_target_x,tmp_target_y) > tmp_speed ){
  speed = tmp_speed;
  direction = point_direction(x,y,tmp_target_x, tmp_target_y);
}
else {
  speed = 0;
  x = tmp_target_x;
  y = tmp_target_y;
}

