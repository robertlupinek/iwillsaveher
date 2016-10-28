//If the door is open then move to the next room
if ( open == 1 ){
  //Remove the player from the room...
  with(other){
    instance_destroy();
  }

  //If all the players are gone the go to next level...
  if ( !instance_exists(obj_player_parent) ){
    instance_create(x,y,obj_transition_blocks);
  }
}
