
tmp_target = argument0;
tmp_distance = argument1;
tmp_xscale = argument2;

//Check for possible collisions with the obstacle
tmp_object = instance_position(x+tmp_xscale*tmp_distance,y,tmp_target );
if ( tmp_object){
  if place_meeting(x,y,tmp_object) then return false;
  //I am not sure what this should be....
  if tmp_object.state = 1 || tmp_object.alarm[0] <= tmp_object.reset - 20 then return tmp_object;
}
return false; 
