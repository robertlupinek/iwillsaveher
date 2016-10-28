hspeed = 0;
vspeed = 0;
gravity = 0;  

if ( instance_exists(obj_player_parent) ){

  //Set an enemy target if we have a clear line of site to the target.        
  //range,radius,xscale,start_angle,target,block,check for closest
  tmp_player_target = scp_can_hit(range,20,xscale,10,obj_player_parent,obj_block,true); 
  if ( tmp_player_target ){
    if tmp_player_target.x >= x then target_xscale = 1 else target_xscale = -1;
  }
  //Rotate through the sprite until we get back to pointing at the right dir
  if ( xscale != target_xscale ){     
    image_index += 0.5;
    if ( image_index > image_number - 3 ){
      image_index = 0;
      xscale = target_xscale;
    } //Go ahead and attack :)
  } else if ( alarm[1] <= 0 && tmp_player_target ){ 
    attacking = 1;
    image_index = 0;
    my_proj = instance_create(x + xscale * 10,y,obj_enemy_projectile);
    if xscale = -1 then tmp_dir = 180 else tmp_dir = 0;
    my_proj.direction = tmp_dir;
    my_proj.range = range;
    my_proj.image_xscale = xscale;
    //Set the range on the attack
    with(my_proj){
      if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
    }
    alarm[1] = reload;
  }
}

          
