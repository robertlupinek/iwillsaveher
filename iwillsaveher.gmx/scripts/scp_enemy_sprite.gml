///////////////////////
//Sprite selection
//and index selection
///////////////////////


//Set the image_xscale if not being knocked back or a turret type.
//Turrets set their xcale in their aim code.
if ( !turret ){
  scp_set_xscale();
}

//Moving and walking
{
  sprite_index = sprite_walk;
}


if ( attacking == 1 )
{
  sprite_index = sprite_attack;
}

//Turret should not be animated unless it is turning or attacking.
//Turning animation is handled outside of this script.
if ( turret ){
  //Free the animation if not attacking
  //if attacking == 0 then image_index = 0;
  if attacking == 0 then image_speed = 0 else image_speed = start_image_speed;
}
//All other sprites should restart the animation 2 frames early as the last two frames
//are for freezing and hurt images.
//Rotate if we are on the last frame.  Last frame is for damage.  Second to last if frozen.
if ( image_index > image_number - 3 )
{
  image_index = 0;
  //Stop the attack animation 
  attacking = 0;
}

