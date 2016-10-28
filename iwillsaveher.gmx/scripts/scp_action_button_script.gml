
//Make the player do actiony things...
//Strangely, it is possible for the player_id object to exist before the variable is set.
//It defaults to -1 if no player is found in the controller.  Maybe that is an instance id?
if ( obj_controller.player_id && instance_exists( obj_controller.player_id )  ) {
  with(obj_controller.player_id)
  {
    if ( !jump ){
      audio_play_sound(snd_jump,1,false);
      should_jump = 1;
      manual_jump = 1;
      //Make sure the jump path is not set.  This will auto set the path at the end of the jump.
      jump_path = 0; 
    }
  } 
}
