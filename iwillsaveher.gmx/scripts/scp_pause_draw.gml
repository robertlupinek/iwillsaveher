x = start_x + view_xview[0];
y = start_y + view_yview[0];


if ( paused == 1 )
{
    //Draw the sprite we created from the view surface.
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.
    draw_sprite_ext(screen_sprite,image_index,view_xview[0],view_yview[0],0.5,0.5,0,c_white,1);
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);
    draw_set_alpha(1);
    draw_set_color(c_white);    
    draw_sprite(sprite_index,image_index,x,y);
    draw_sprite(spr_selection_thingy,image_index,mouse_x,mouse_y);
}
else{
    //Draw the button  
    draw_sprite(sprite_index,image_index,x,y);
}


