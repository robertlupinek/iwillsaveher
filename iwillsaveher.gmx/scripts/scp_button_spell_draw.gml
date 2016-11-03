if (  instance_exists(obj_player_1)  ) {

  scp_button_draw();

  draw_set_color(c_red);
  draw_set_alpha(0.5);

  if ( obj_player_1.alarm[which_alarm] > 0 ){
    //The 20 needs to be set to what ever the max reload of the spell is...
    tmp_per = obj_player_1.alarm[which_alarm] / spell_reload;
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
