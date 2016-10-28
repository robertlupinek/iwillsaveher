if ( global.pause_select == 1 ){
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.
    draw_sprite_ext(screen_sprite,image_index,view_xview[0],view_yview[0],0.5,0.5,0,c_white,1);

} 

draw_set_alpha(1); 
