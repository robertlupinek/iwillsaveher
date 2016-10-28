

//Collisions while moving
if ( vspeed != 0 || hspeed != 0 || gravity != 0 ) {

  //Colliding sideways
  if ( hspeed != 0 )
  {
    if ( place_meeting(x + hspeed ,y,obj_block) ){
      if (hspeed<=0){
        move_contact_solid(180,abs(hspeed));
      }
      if (hspeed>0){
        move_contact_solid(0,abs(hspeed));
      }
      hspeed=0;
    }
  }  
  //Colliding vertically
  if ( vspeed != 0 )
  {
    if ( place_meeting(x,y + vspeed,obj_block) ){
      if (vspeed<=0){
        move_contact_solid(90,abs(vspeed));
      }
      if (vspeed>0){
        move_contact_solid(270,abs(vspeed));
      }
      vspeed=0;
    }
  }

}
