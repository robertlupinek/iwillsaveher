tmp_length = argument0;  //Max beam length
tmp_angle = argument1;  //Angle to move 
tmp_step = argument2;   //How may pixels to move per step
tmp_sprite_1 = argument3;
tmp_sprite_2 = argument4;
tmp_start_point = argument5;
tmp_end_point = argument6;
tmp_x = x;
tmp_y = y;

//Draw main sprite
draw_sprite_ext(tmp_sprite_1,-1,x,y,image_xscale,image_yscale,tmp_angle,c_white,1);
for ( b=tmp_start_point;b<=tmp_length-tmp_step;b+=tmp_step){
  tmp_x = x + lengthdir_x(b,tmp_angle);
  tmp_y = y + lengthdir_y(b,tmp_angle);

  draw_sprite_ext(tmp_sprite_2,image_index + random(5),tmp_x ,tmp_y ,image_xscale,image_yscale,tmp_angle,c_white,1);
}
//Draw the end
if ( tmp_end_point > 0 ){
  tmp_x = tmp_x + lengthdir_x(tmp_end_point,tmp_angle);
  tmp_y = tmp_y + lengthdir_y(tmp_end_point,tmp_angle);
  draw_sprite_ext(tmp_sprite_1,-1,tmp_x,tmp_y,-image_xscale,image_yscale,tmp_angle,c_white,1);
}

