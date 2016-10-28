
//Select player
if ( mouse_check_button_pressed(mb_left) )
{
    selected_object = instance_position(mouse_x,mouse_y,obj_player_parent)
}

//Move the player around
//IF the selected object is a player unit if not set to the default value of -1
if ( instance_exists( selected_object ) && selected_object != -1  ){
    if ( object_is_ancestor(selected_object.object_index,obj_player_parent)  ) {
        if ( mouse_check_button(mb_left) ){
            move_x = 0;
            move_y = 0;
    
            if ( mouse_grid_x > selected_object.x ){
                move_x = grid_size_x;
            }
            if ( mouse_grid_x < selected_object.x ){
                move_x = -grid_size_x;
            }
            if ( mouse_grid_y > selected_object.y ){
                move_y = grid_size_y;
            }
            if ( mouse_grid_y < selected_object.y ){
                move_y = -grid_size_y;
            }
        
            //Don't move diagonal
            if ( move_x != 0 and move_y != 0 ){
                if ( abs(mouse_grid_x - selected_object.x) > abs(mouse_grid_y - selected_object.y) ){
                    move_y = 0;
                }
                else{
                    move_x = 0;
                } 
            }   

            
            //If player is not ready to move again...
            if ( selected_object.alarm[0] ){
                move_x = 0;
                move_y = 0;             
            }
            
            
            //Set the rotation
            move_rot = -1;
            if move_x > 0 then move_rot = 0;
            if move_x < 0 then move_rot = 180;
            if move_y < 0 then move_rot = 90;
            if move_y > 0 then move_rot = 270;
            
            //Setup the movement arrow and collisions if we are actually moving
            if ( move_rot >= 0){
                //Check for collisions and if we are colliding with another player object's grid box.
                selected_object.move_x = move_x;
                selected_object.move_y = move_y;
                //Set the tmp_other in the selected object to id of the
                //obj_grid_box we may collide with.
                with(selected_object){
                   tmp_other = instance_place(x + move_x, y + move_y,obj_player_parent)
                }
                //Set tmp_other to the selected object's tmp_other
                tmp_other = selected_object.tmp_other;
                //Set tmp_swap to true if we are colliding with a player unit and tmp_other is a grid box
                //obj_grid_box should always have it's parent variable set to the id of the object creating it.
                if ( tmp_other ){
                  tmp_swap = object_is_ancestor(tmp_other.object_index, obj_player_parent )
                }
                else{
                  tmp_swap = false
                }
                //End of collision check
            
                //If not colliding in selected direction OR swapping then draw arrow.
                if ( !tmp_other  || tmp_swap ){  
                   move_arrow.visible = true;
                   move_arrow.image_angle = move_rot;
                   //Set the move arrow cooridinates to that of the selected unit
                   move_arrow.x = selected_object.x + 12;
                   move_arrow.y = selected_object.y + 12;
                   //Move the arrow up a bit if pointing up -- gets it out of the unit's face
                   if move_rot = 90 then move_arrow.y -= 6;
                   //Switch to switch sprite if swapping player positions
                 
                   if ( tmp_swap ){
                      move_arrow.sprite_index = spr_grid_arrow_swap;
                   }
                   else
                   {
                      move_arrow.sprite_index = spr_grid_arrow; 
                   }
                }  
            }
            else{
                move_arrow.visible = false;
            }
                      
        }
    
        if ( mouse_check_button_released(mb_left) ){
            //If we are not colliding with anything OR we are colliding with a player unit
            if ( !tmp_other  || tmp_swap ){
                //Check to see if you are colliding with another player
                //Move other player you collided with
                if ( tmp_other ){
                    tmp_other.x -= move_x;  
                    tmp_other.y -= move_y;
                }
                //Move player
                selected_object.x += move_x;
                selected_object.y += move_y;
            }

            //Clear all variables ( helps to clear drawing of the arrow )
            move_rot = -1;
            move_x = 0;
            move_y = 0;
            move_arrow.visible = false;
            move_arrow.sprite_index = spr_grid_arrow;
            
        }
        
    }  
    
}
