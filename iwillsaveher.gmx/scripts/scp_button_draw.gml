//Poop
if ( alarm[1] ){
  if alarm[1] > 5 then image_xscale +=0.025 else image_xscale -=0.025;
  image_yscale = image_xscale;
}
else if ( alarm[2] <= 0 ){
  image_xscale = 1;
  image_yscale = 1;
}


draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,1);

if ( selected = 1 ){
  select_frame +=0.2;
  if select_frame > 15 then select_frame = 0;
  draw_sprite_ext(spr_button_selected,select_frame,x,y,image_xscale,image_yscale,image_angle,c_white,1);
}
