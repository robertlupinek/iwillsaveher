//This script checks to see if the object will collide with another object if moved in a line
tmp_start_x = argument[0];
tmp_start_y = argument[1];
tmp_end_x = argument[2];
tmp_end_y = argument[3]; 
tmp_target_object = argument[4];
tmp_increment = argument[5];  //How fast to move along the line

tmp_x = 0;
tmp_y = 0;

//Get the distance and direction to the end coordinates from the start
tmp_len = point_distance(tmp_start_x,tmp_start_y,tmp_end_x,tmp_end_y);
tmp_dir = point_direction(tmp_start_x,tmp_start_y,tmp_end_x,tmp_end_y);

//Move along the line at the defined increment
for ( n=0;n<=tmp_len+tmp_increment;n+=tmp_increment){
  
  tmp_x = tmp_start_x + lengthdir_x(n,tmp_dir);
  tmp_y = tmp_start_y + lengthdir_y(n,tmp_dir);
  //If we find a collision exit the path finding returning the object collided with  
  if ( place_meeting(tmp_x,tmp_y,tmp_target_object ) ){
     return instance_place( tmp_x,tmp_y,tmp_target_object );
  }
  
  //instance_create(tmp_x,tmp_y,obj_e_spark)
  
}

//Return nada
return -1;

