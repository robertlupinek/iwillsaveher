if ( instance_exists( obj_player_1 )  ) {
  scp_button_step();
}
else { //Draw the empty sprite if the player seleced is no more or all players are gone...
  sprite_index = spr_button_empty;
}
