color = c_white;
tmp_rand = 0;

//If hurt
if (alarm[0])
{
    tmp_rand = -2 + random(4);
    image_index = image_number - 1;
}

//If frozen
if (alarm[4])
{
    tmp_rand = 0;
    image_index = image_number - 2;
}

draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,xscale,yscale,image_angle,color,image_alpha);

//Debug stuff
//draw_text(x,y-15,sprite_xoffset)
