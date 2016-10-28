//If a player is selected and the player selected exists then configure the spell button...
//Strangely, it is possible for the player_id object to exist before the variable is set.
//It defaults to -1 if no player is found in the controller.  Maybe that is an instance id?
if ( obj_controller.player_id && instance_exists( obj_controller.player_id )  ) {
  //The script to run when the button is pressed :)
  //Override this variable to creat unique actions for your buttons...
  button_script = scp_button_spell;
  //Which player in numeric form from 0 to 2
  which_player = obj_controller.player_id.p_index;
  //Which spell is assigned to the player that is currently selected
  spell_selected = global.spell_selected[which_player];
  //Set the timer for how long it will take to reload the spell.
  spell_reload = global.spell_reload[spell_selected]
  which_alarm = 6;  //Which alarm to trigger and wait for when firing
  //Which script to fire off 
  spell_script = global.spell_script[spell_selected];
  //Which sprite to use for the button
  sprite_index = global.spell_sprite[spell_selected];
  
  //Trigger the spell effects on button push etc.
  scp_button_step();

}
else { //Draw the empty sprite if the player seleced is no more or all players are gone...
  sprite_index = spr_button_empty;
}
