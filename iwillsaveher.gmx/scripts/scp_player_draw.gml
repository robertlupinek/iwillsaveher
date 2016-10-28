color = c_white;
//Wiggle a bit if hurt
tmp_rand = 0;
//If hurt
if (alarm[0])
{
    tmp_rand = -2 + random(4);
}

if ( global.mp ){
  //Draw the path line
  draw_set_alpha(path_alpha);
  for ( i = 0; i<=1;i+= 10/path_ln ){
    tmp_x = path_get_x(my_path, i);
    tmp_y = path_get_y(my_path, i);
    draw_circle(tmp_x,tmp_y,2,false);
  }
}  
draw_set_alpha(1);

//Draw level up power!!!!!
if ( alarm[5] ){
  repeat(45){
     draw_sprite_ext(spr_effect_level_power,random(4),x,y,random(alarm[5] * 0.1),random(1),random(360),color,random(1));

  }
}

//Draw the actual sprite.
draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,xscale,yscale,image_angle,color,image_alpha);

draw_set_font(global.font_red);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x,y,id);
