//Draw the HUD and what not

x = view_xview[0];
y = view_yview[0] + 192;


//Place Buttons
my_button_1.x = x+231;
my_button_1.y = y+23;


//Shake the player button if it is hurt
if ( instance_exists(obj_player_1) ){
  if obj_player_1.alarm[0] > 0 then my_button_1.x += random(2) - random(2)  ;
}


//If multipath movement draw the grid for debugging purposes
//draw_set_alpha(0.2);
//mp_grid_draw(global.mp_grid_fly);
//draw_set_alpha(1);

//Uncomment if you decide to use the gui surface and scale it.
//Gui surface is always set to the screen size regardless of how the game is scaled.
//It is ideal to display images you DON'T want scaled.
//display_set_gui_size(400, 240);

//Draw the select box based on the grid coordinates.
//This can be removed if you are not using grid based movement.0
//draw_sprite(spr_grid_selection,-1,mouse_grid_x,mouse_grid_y);

draw_sprite(spr_hud,-1,x,y);



//Draw player health and level up stuff
if ( instance_exists(player_id) && player_id != -1 )
{
  for ( h = 0; h < player_id.hp_max; h+=1 )
  {
    draw_sprite(spr_player_health,1,x+118+h*4,y+8);
  }
  for ( h2 = 0; h2 < player_id.hp; h2+=1 )
  {
    draw_sprite(spr_player_health,0,x+118+h2*4,y+8);
  }
  
  /////////////////////////////////////
  //Draw the spell level
  tmp_spell = global.spell_selected[player_id.p_index];
  spell_lvl_frame += 0.1;
  //Set how much of the level bar to show based on how close to leveling you are.
  //This is represented 0 to 1 ( precentage ) of exp vs exp for next level.
  if ( global.spell_exp[tmp_spell] == 0 ){
    tmp_lvl_percent = 0;
  }
  else{
    tmp_lvl_percent = global.spell_exp[tmp_spell] / ( global.spell_next_level[tmp_spell] * global.spell_level[tmp_spell] );
  }
  tmp_x = 311;
  tmp_y = 42;
  draw_sprite_ext(spr_hud_spell_exp_b,spell_lvl_frame,x+tmp_x,y+tmp_y,1,1,0,c_white,1);
  draw_sprite_ext(spr_hud_spell_exp_t,-1,x+tmp_x + 41,y+tmp_y,1-tmp_lvl_percent,1,0,c_white,1);

    
  //////////////////////////////////////////////////////////////////////////
  //Draw player level up bar and text
  //Set the frame to draw 
  lvl_frame += 0.1;
  if lvl_frame > 20 then tmp_frame = 0;
  //Set how much of the level bar to show based on how close to leveling you are.
  //This is represented 0 to 1 ( precentage ) of exp vs exp for next level.
  if ( global.exp_points[player_id.p_index] == 0 ){
    tmp_lvl_percent = 0;
  }
  else{
    tmp_lvl_percent = global.exp_points[player_id.p_index] / player_id.exp_next;
  }
  draw_sprite(spr_hud_exp_bar_b,lvl_frame,x+121,y+26);
  draw_sprite_ext(spr_hud_exp_bar_t,lvl_frame,x+201,y+26,1-tmp_lvl_percent,1,0,c_white,1);
  draw_set_color(c_white);
  draw_set_halign(fa_left);
  draw_set_font(global.font_white);
  tmp_lvl_text = "LEVEL" + string(global.level[player_id.p_index]);
  draw_text(x+125,y + 20,tmp_lvl_text);
}
else
{
  for ( h = 0; h < global.hp_max[0]; h+=1 )
  {
    draw_sprite(spr_player_health,1,x+118+h*4,y+8);
  }
}

//Draw money
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(global.font_score);
draw_text_transformed(x + 10,y + 8, "$" + string(global.points),xscale,yscale,angle );




