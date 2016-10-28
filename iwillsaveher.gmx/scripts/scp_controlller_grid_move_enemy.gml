//Triggered from alarm[5] of the Controller object...

//Move enemies
//This should ALWAYS move enemies from the bottom up to over false collisions.
tmp_pre_sort_array = scp_obj_array(obj_enemy_parent);
//Sort the array by the y value of the enemy.
//We should move the enemies down at the bottom first
tmp_array = scp_bubble_sort_by_y(tmp_pre_sort_array,"desc");

//Loop through enemy array
for ( i = 0; i < array_length_1d(tmp_array);i+=1)
  {
      //Check to make sure the enemy exists
      if ( instance_exists(tmp_array[i]) )
      {
          with ( tmp_array[i] ){
             //Check for collisions and move IF ready to move again
             if ( alarm[0] <= 0 && !place_meeting(x,y + obj_controller.grid_size_y, obj_player_parent) && !place_meeting(x,y + obj_controller.grid_size_y, obj_enemy_parent) ){
               y += obj_controller.grid_size_y;
               moving = 1;
             }
          }
      }      
} 
//Reset the alarm to trigger enemy movement again...
alarm[5] = grid_move_speed;
