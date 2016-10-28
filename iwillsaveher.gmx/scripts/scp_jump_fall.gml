//Falling or jumping
if ( jump == 0 && should_jump  ){
  //SOMETIMES the object is 1 pixel stuck in the floor for fun...
  //This is because of the multipath collision.
  //This should not be required in game not using those functions.
  //Apparently it allows for sprites to be 1 pixel colliding...
  if ( ( place_meeting(x,y,obj_block) || place_meeting(x,y,obj_block_ladder) )  ){
    if ( !place_meeting(x,y-1,obj_block) ){
      y -= 1;
    }
  }
  jump = 1;
  vspeed = -jump_max; 
  gravity = 0.4;
  hspeed = xscale * jump_speed;
  path_end();
}

//We cannot walk if we are stuck on an air tile, so move off of it if not jumping.
if ( place_meeting(x,y,obj_block_air) && jump == 0 && flying = 0 )
{
  tmp_block = instance_place(x,y+vspeed,obj_block_air);
  if ( tmp_block.x + tmp_block.sprite_width / 2 >= x ){
    x-= move_speed
  } else {
    x+= move_speed; 
  }
}

//Falling 
//if ( !jump && !flying && !place_meeting(x,y + 5,obj_block_ladder) && !place_meeting(x,y + 5,obj_block_ladder)  ){
//  jump = 1;
//  gravity = 0.4;
//}

//Limit vspeed
if vspeed > 10 then vspeed = 10;
