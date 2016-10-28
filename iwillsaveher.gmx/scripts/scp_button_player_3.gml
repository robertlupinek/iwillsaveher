tmp_player = obj_player_3; 
//Make the player jump
if ( instance_exists( tmp_player ) )
{
  obj_controller.player_id = tmp_player.id;
  //Create the graphic that shows the player is selected
  tmp_this_player = instance_create(x,y,obj_this_player);
  tmp_this_player.follow_id = obj_player_3.id;
}


  
