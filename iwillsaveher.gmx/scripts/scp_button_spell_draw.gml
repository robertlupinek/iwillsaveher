//If a player is selected and the player selected exists then configure the spell button...
//Strangely, it is possible for the player_id object to exist before the variable is set.
//It defaults to -1 if no player is found in the controller.  Maybe that is an instance id?
if ( obj_controller.player_id && instance_exists( obj_controller.player_id )  ) {

  scp_button_draw();

  draw_set_color(c_red);
  draw_set_alpha(0.5);

  if ( obj_controller.player_id.alarm[which_alarm] > 0 ){
    //The 20 needs to be set to what ever the max reload of the spell is...
    tmp_per = obj_controller.player_id.alarm[which_alarm] / spell_reload;
    tmp_rec=28-28*tmp_per;
  }
  else{
    tmp_rec = 28;
  }

  if ( tmp_rec != 28 ){
    draw_rectangle(x -13,y-13+tmp_rec,x+15,y+15,false);
  } 
  
  draw_set_alpha(1); 
  
  
  //Draw the current ammo
  draw_set_alpha(1); 
  draw_set_color(c_white);
  draw_set_font(global.font_white);
  draw_text(x,y,global.spell_ammo[spell_selected] );


}
