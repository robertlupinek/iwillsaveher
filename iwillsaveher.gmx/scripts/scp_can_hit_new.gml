//Start set variables for checking if an attack would be successful
tmp_range  = argument0;
//What if the attack radius
tmp_radius = argument1;
//xcale of the character or direction facing where left = -1 and right = 1
tmp_direction = argument2;

//What is the start angle to check in?
//This is subtracted from the 
tmp_start_angle = argument3
//Object type to check for?
tmp_target = argument4;
//Blocking object
tmp_block = argument5;
//Should we check for closest enemy?
tmp_get_closest = argument6;

//Angle to increment the radius per step
tmp_angle_increment = 10;

//Closest enemy
tmp_closest = instance_nearest(x,y,tmp_target);

//Check direction based tmp_direction or look both directions if looking for closest enemy

//Check right
if ( tmp_direction == 1 || tmp_get_closest == true ) {
  tmp_cur_dir = 0 - tmp_start_angle;
  tmp_radius2 = tmp_radius + tmp_cur_dir;
  for ( a = tmp_cur_dir; a <= tmp_radius2; a += tmp_angle_increment ) {
    //Check to see if there was a collision
    tmp_target_x = x + lengthdir_x(tmp_range,a);
    tmp_target_y = y + lengthdir_y(tmp_range,a);
    //If you can hit the target and you are not blocked
    tmp_collider = collision_line(x,y,tmp_target_x,tmp_target_y,tmp_target,false,true);
    if ( tmp_collider ){
      if ( !collision_line(x,y,tmp_collider.x,tmp_collider.y,tmp_block,false,true) ){
        //If this is the target facing direction and a successful line of site to target was acheived...
        if tmp_direction = 1 then return tmp_collider;
        if ( tmp_closest == tmp_collider && tmp_get_closest ){
          return tmp_collider;
        }
      }
    }
    //You can create an object here to visualize where the lines of collision will check from
    //instance_create(tmp_target_x,tmp_target_y,obj_e_spark);
  }
  
}
//Check left
if ( tmp_direction == -1 || tmp_get_closest == true ) {
  tmp_cur_dir = 180 + tmp_start_angle;
  tmp_radius2 = tmp_cur_dir - tmp_radius;
  for ( a = tmp_cur_dir; a >= tmp_radius2; a -= tmp_angle_increment ) {
    //Check to see if there was a collision
    tmp_target_x = x + lengthdir_x(tmp_range,a);
    tmp_target_y = y + lengthdir_y(tmp_range,a);
    //If you can hit the target and you are not blocked
    tmp_collider = collision_line(x,y,tmp_target_x,tmp_target_y,tmp_target,false,true);
    if ( tmp_collider ){
      if ( !collision_line(x,y,tmp_collider.x,tmp_collider.y,tmp_block,false,true) ){
        //If this is the target facing direction and a successful line of site to target was acheived...
        if tmp_direction == -1 then return tmp_collider;
        //If the collider is the closest target AND we are checking for closest target
        if ( tmp_closest == tmp_collider && tmp_get_closest ){
          return tmp_collider;
        }
      }
    }
    //You can create an object here to visualize where the lines of collision will check from
    //instance_create(tmp_target_x,tmp_target_y,obj_e_spark);
  }
}



