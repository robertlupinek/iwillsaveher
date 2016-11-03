//Insure the color is set properly
color = c_white;
//Don't draw the player if the game is all paused for movement of spell selection
if ( !global.pause_select ){

  //Wiggle a bit if hurt
  tmp_rand = 0;
  //If hurt
  if (alarm[0])
  {
      tmp_rand = -2 + random(4);
  }
  
  draw_set_alpha(1);
  
  //Draw level up power!!!!!
  if ( alarm[5] ){
    repeat(45){
       draw_sprite_ext(spr_effect_level_power,random(4),x,y,random(alarm[5] * 0.1),random(1),random(360),color,random(1));
  
    }
  }
  //Draw the shadow.
  draw_sprite_ext(spr_shadow_small,-1,x,bbox_bottom,xscale,yscale,image_angle,color,image_alpha);
  //Draw the actual sprite.
  draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,xscale,yscale,image_angle,color,image_alpha);
}

//Draw the path the player will move in
dot_rot += 5;
if dot_rot > 360 then dot_rot = 0;
for ( i = 10/path_ln; i<=1;i+= 10/path_ln ){
  tmp_x = path_get_x(my_path, i);
  tmp_y = path_get_y(my_path, i);
  draw_sprite_ext(spr_can_walk_dot,-1,tmp_x,tmp_y,1,1,dot_rot,c_white,path_alpha);
}




